import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:property_sales/core/mixins/cubit_mixin.dart';
import 'package:property_sales/core/models/result.dart';
import 'package:property_sales/features/home/domain/entites/product_entity.dart';
import 'package:property_sales/features/home/domain/repositories/products_repository.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> with SafeEmitter<HomeState> {
  final ProductsRepository _repo;
  Timer? _debounce;
  // _reqId to cancel older requests, if we have used bloc we can apply it using transformers
  // but it's not available in cubit so this is a manuall implementation for it
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
    final q = (term ?? state.searchTerm).trim();
    final id = ++_reqId;

    safeEmit(
      state.copyWith(
        searchTerm: term ?? state.searchTerm,
        status: const Result.loading(),
        page: 1,
        items: const [],
        totalPages: 0,
        totalLength: 0,
      ),
    );

    final res = await _repo.search(searchTerm: q, page: 1, limit: state.limit);
    if (id != _reqId) return;

    res.when(
      success: (pageData) => safeEmit(
        state.copyWith(
          status: const Result.success(data: []),
          items: pageData.data,
          page: 1,
          totalPages: pageData.totalPages,
          totalLength: pageData.length,
          errorMessage: null,
        ),
      ),
      empty: () => safeEmit(
        state.copyWith(
          status: const Result.success(data: []),
          items: const [],
          page: 1,
          totalPages: 0,
          totalLength: 0,
        ),
      ),
      failure: (err, _, msg) => safeEmit(
        state.copyWith(
          status: Result.failure(error: err, errorMessage: msg),
          items: const [],
          page: 1,
          totalPages: 0,
          totalLength: 0,
          errorMessage:
              msg ??
              (q.isEmpty ? 'Failed to load products' : 'Failed to search'),
        ),
      ),
      loading: () {},
    );
  }

  Future<void> loadMoreIfPossible() async {
    if (state.isLoadingMore) return;
    if (state.page >= state.totalPages) return;

    safeEmit(state.copyWith(isLoadingMore: true));
    final next = state.page + 1;

    final res = await _repo.search(
      searchTerm: state.searchTerm.trim(),
      page: next,
      limit: state.limit,
    );

    res.when(
      success: (pageData) {
        final merged = List<ProductEntity>.from(state.items)
          ..addAll(pageData.data);
        safeEmit(
          state.copyWith(
            items: merged,
            page: next,
            totalPages: pageData.totalPages,
            totalLength: pageData.length,
            isLoadingMore: false,
          ),
        );
      },
      empty: () => safeEmit(state.copyWith(isLoadingMore: false)),
      failure: (err, _, msg) =>
          safeEmit(state.copyWith(isLoadingMore: false, errorMessage: msg)),
      loading: () {},
    );
  }
}
