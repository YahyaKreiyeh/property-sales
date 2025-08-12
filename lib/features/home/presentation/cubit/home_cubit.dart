import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:property_sales/core/mixins/cubit_mixin.dart';
import 'package:property_sales/core/models/result.dart';
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

  void searchChanged(String term) {
    safeEmit(state.copyWith(searchTerm: term));
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () => search());
  }

  Future<void> search({String? term}) async {
    final searchTerm = (term ?? state.searchTerm).trim();
    final id = ++_reqId;

    safeEmit(
      state.copyWith(
        searchTerm: searchTerm,
        status: const Result.loading(),
        page: 1,
        items: const [],
      ),
    );

    final result = await _repo.search(
      SearchProductsParams(searchTerm: searchTerm, page: 1, limit: state.limit),
    );

    if (id != _reqId) return;

    result.map(
      empty: (_) => safeEmit(
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
      loading: (_) {},
      success: (s) => safeEmit(
        state.copyWith(
          status: Result.success(data: s.data),
          page: 1,
          items: s.data.data,
        ),
      ),
      failure: (f) => safeEmit(
        state.copyWith(
          status: Result.failure(error: f.error, errorMessage: f.errorMessage),
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

    safeEmit(state.copyWith(isLoadingMore: true));

    final nextPage = state.page + 1;
    final result = await _repo.search(
      SearchProductsParams(
        searchTerm: state.searchTerm.trim(),
        page: nextPage,
        limit: state.limit,
      ),
    );

    result.map(
      empty: (_) => safeEmit(state.copyWith(isLoadingMore: false)),
      loading: (_) {},
      success: (s) {
        final merged = [...state.items, ...s.data.data];
        safeEmit(
          state.copyWith(
            status: Result.success(data: s.data),
            items: merged,
            page: nextPage,
            isLoadingMore: false,
          ),
        );
      },
      failure: (f) => safeEmit(
        state.copyWith(
          isLoadingMore: false,
          loadMoreError: f.errorMessage ?? 'Failed to load more products',
        ),
      ),
    );
  }
}
