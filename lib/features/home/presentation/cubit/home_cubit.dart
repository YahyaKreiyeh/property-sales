import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:property_sales/core/mixins/cubit_mixin.dart';
import 'package:property_sales/core/models/result.dart';
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
    safeEmit(state.copyWith(searchTerm: term, totalLength: 0));
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      search();
    });
  }

  Future<void> search({String? term}) async {
    final searchTerm = term ?? state.searchTerm.trim();
    final id = ++_reqId;

    safeEmit(
      state.copyWith(
        searchTerm: searchTerm,
        status: const Result.loading(),
        page: 1,
        items: const [],
        totalPages: 0,
        totalLength: 0,
      ),
    );

    final result = await _repo.search(
      SearchProductsParams(searchTerm: searchTerm, page: 1, limit: state.limit),
    );

    if (id != _reqId) return;

    result.map(
      empty: (_) => safeEmit(
        state.copyWith(
          status: const Result.success(data: []),
          items: const [],
          page: 1,
          totalPages: 0,
          totalLength: 0,
        ),
      ),
      loading: (_) {},
      success: (s) => safeEmit(
        state.copyWith(
          status: const Result.success(data: []),
          items: s.data.data,
          page: 1,
          totalPages: s.data.totalPages,
          totalLength: s.data.length,
          errorMessage: null,
        ),
      ),
      failure: (f) => safeEmit(
        state.copyWith(
          status: Result.failure(error: f.error, errorMessage: f.errorMessage),
          items: const [],
          page: 1,
          totalPages: 0,
          totalLength: 0,
          errorMessage: f.errorMessage,
        ),
      ),
    );
  }

  Future<void> loadMoreIfPossible() async {
    if (state.isLoadingMore) return;
    if (state.page >= state.totalPages) return;

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
        final mergedItems = [...state.items, ...s.data.data];
        safeEmit(
          state.copyWith(
            items: mergedItems,
            page: nextPage,
            totalPages: s.data.totalPages,
            totalLength: s.data.length,
            isLoadingMore: false,
          ),
        );
      },
      failure: (f) => safeEmit(
        state.copyWith(isLoadingMore: false, errorMessage: f.errorMessage),
      ),
    );
  }
}
