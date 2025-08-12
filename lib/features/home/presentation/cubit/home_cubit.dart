import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:property_sales/core/mixins/cubit_mixin.dart';
import 'package:property_sales/core/models/result.dart';
import 'package:property_sales/features/home/domain/entites/filter_entity.dart';
import 'package:property_sales/features/home/domain/entites/product_entity.dart';
import 'package:property_sales/features/home/domain/repositories/products_repository.dart';
import 'package:property_sales/features/home/domain/usecases/search_products_usecase.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> with SafeEmitter<HomeState> {
  final ProductsRepository _repo;
  Timer? _debounce;
  int _reqId = 0;

  HomeCubit(this._repo) : super(const HomeState()) {
    search(term: '');
  }

  @override
  Future<void> close() {
    _debounce?.cancel();
    return super.close();
  }

  Future<void> loadCategoriesIfNeeded() async {
    if (state.categories.isNotEmpty || state.categoriesStatus.isLoading) {
      return;
    }

    await _loadCategories();
  }

  Future<void> retryLoadCategories() async {
    await _loadCategories();
  }

  Future<void> _loadCategories() async {
    safeEmit(state.copyWith(categoriesStatus: const Result.loading()));

    final result = await _repo.getCategories();

    result.when(
      empty: () => safeEmit(
        state.copyWith(
          categoriesStatus: const Result.success(data: []),
          categories: const [],
        ),
      ),
      loading: () {},
      success: (categories) => safeEmit(
        state.copyWith(
          categoriesStatus: Result.success(data: categories),
          categories: categories,
        ),
      ),
      failure: (error, _, errorMessage) => safeEmit(
        state.copyWith(
          categoriesStatus: Result.failure(
            error: error,
            errorMessage: errorMessage,
          ),
        ),
      ),
    );
  }

  void searchChanged(String term) {
    final updatedFilter = state.currentFilter.copyWith(searchTerm: term);
    safeEmit(state.copyWith(searchTerm: term, currentFilter: updatedFilter));
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () => search());
  }

  void initializeFilterDraft() {
    safeEmit(
      state.copyWith(filterDraft: state.currentFilter, selectedCity: null),
    );
  }

  void toggleCategory(int categoryId) {
    final currentIds = List<int>.from(state.filterDraft.categoryIds);
    if (currentIds.contains(categoryId)) {
      currentIds.remove(categoryId);
    } else {
      currentIds.add(categoryId);
    }

    safeEmit(
      state.copyWith(
        filterDraft: state.filterDraft.copyWith(categoryIds: currentIds),
      ),
    );
  }

  void updateMinPrice(String value) {
    final minPrice = double.tryParse(value);
    safeEmit(
      state.copyWith(
        filterDraft: state.filterDraft.copyWith(minPrice: minPrice),
      ),
    );
  }

  void updateMaxPrice(String value) {
    final maxPrice = double.tryParse(value);
    safeEmit(
      state.copyWith(
        filterDraft: state.filterDraft.copyWith(maxPrice: maxPrice),
      ),
    );
  }

  void selectCity(String? city) {
    safeEmit(state.copyWith(selectedCity: city));
  }

  void applyFilter() {
    safeEmit(state.copyWith(currentFilter: state.filterDraft));
    search();
  }

  void resetFilter() {
    const emptyFilter = FilterEntity();
    safeEmit(
      state.copyWith(
        currentFilter: emptyFilter,
        filterDraft: emptyFilter,
        selectedCity: null,
      ),
    );
    search();
  }

  Future<void> search({String? term}) async {
    final searchTerm = (term ?? state.searchTerm).trim();
    final id = ++_reqId;

    final updatedFilter = state.currentFilter.copyWith(
      searchTerm: searchTerm,
      page: 1,
    );

    safeEmit(
      state.copyWith(
        searchTerm: searchTerm,
        status: const Result.loading(),
        page: 1,
        items: const [],
        currentFilter: updatedFilter,
      ),
    );

    final result = await _repo.search(
      SearchProductsParams(
        searchTerm: searchTerm,
        page: 1,
        limit: state.limit,
        minPrice: updatedFilter.minPrice,
        maxPrice: updatedFilter.maxPrice,
        categoryIds: updatedFilter.categoryIds,
        cityId: updatedFilter.cityId,
      ),
    );

    if (id != _reqId) return;

    result.when(
      empty: () => safeEmit(
        state.copyWith(
          status: Result.success(
            data: const ProductPage(
              data: [],
              length: 0,
              totalPages: 0,
              message: 'No products found',
            ),
          ),
          page: 1,
          items: const [],
        ),
      ),
      loading: () {},
      success: (data) => safeEmit(
        state.copyWith(
          status: Result.success(data: data),
          page: 1,
          items: data.data,
        ),
      ),
      failure: (error, _, errorMessage) => safeEmit(
        state.copyWith(
          status: Result.failure(error: error, errorMessage: errorMessage),
          page: 1,
          items: const [],
        ),
      ),
    );
  }

  Future<void> loadMoreIfPossible() async {
    if (state.isLoadingMore) return;

    final totalPages = state.status.successValue?.totalPages ?? 0;
    if (totalPages == 0 || state.page >= totalPages) return;

    safeEmit(state.copyWith(isLoadingMore: true, loadMoreError: null));

    final nextPage = state.page + 1;
    final result = await _repo.search(
      SearchProductsParams(
        searchTerm: state.searchTerm.trim(),
        page: nextPage,
        limit: state.limit,
        minPrice: state.currentFilter.minPrice,
        maxPrice: state.currentFilter.maxPrice,
        categoryIds: state.currentFilter.categoryIds,
        cityId: state.currentFilter.cityId,
      ),
    );

    result.when(
      empty: () => safeEmit(state.copyWith(isLoadingMore: false)),
      loading: () {},
      success: (data) {
        final merged = [...state.items, ...data.data];
        safeEmit(
          state.copyWith(
            status: Result.success(data: data),
            items: merged,
            page: nextPage,
            isLoadingMore: false,
            loadMoreError: null,
          ),
        );
      },
      failure: (error, _, errorMessage) => safeEmit(
        state.copyWith(
          isLoadingMore: false,
          loadMoreError: errorMessage ?? 'Failed to load more products',
        ),
      ),
    );
  }
}
