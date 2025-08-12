import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:property_sales/core/models/result.dart';
import 'package:property_sales/features/home/domain/entites/product_entity.dart';
import 'package:property_sales/features/home/domain/usecases/search_products_usecase.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final SearchProductsUseCase _useCase;
  HomeCubit(this._useCase) : super(const HomeState());

  void searchChanged(String term) {
    emit(state.copyWith(searchTerm: term));
  }

  Future<void> submitSearch() async {
    final q = state.searchTerm.trim();
    if (q.isEmpty) {
      emit(state.copyWith(items: const [], page: 1, totalPages: 0));
      return;
    }
    emit(state.copyWith(status: const Result.loading(), page: 1));

    final res = await _useCase(
      SearchProductsParams(searchTerm: q, page: 1, limit: state.limit),
    );

    res.when(
      success: (pageData) {
        emit(
          state.copyWith(
            status: const Result.success(data: []),
            items: pageData.data,
            page: 1,
            totalPages: pageData.totalPages,
            errorMessage: null,
          ),
        );
      },
      failure: (err, _, msg) {
        emit(
          state.copyWith(
            status: Result.failure(error: err, errorMessage: msg),
            errorMessage: msg ?? 'Failed to search',
          ),
        );
      },
      loading: () {},
      empty: () {
        emit(
          state.copyWith(
            status: const Result.success(data: []),
            items: const [],
            page: 1,
            totalPages: 0,
          ),
        );
      },
    );
  }

  Future<void> loadMoreIfPossible() async {
    if (state.isLoadingMore) return;
    if (state.page >= state.totalPages) return;
    if (state.searchTerm.trim().isEmpty) return;

    emit(state.copyWith(isLoadingMore: true));
    final next = state.page + 1;

    final res = await _useCase(
      SearchProductsParams(
        searchTerm: state.searchTerm.trim(),
        page: next,
        limit: state.limit,
      ),
    );

    res.when(
      success: (pageData) {
        final merged = List<ProductEntity>.from(state.items)
          ..addAll(pageData.data);
        emit(
          state.copyWith(
            items: merged,
            page: next,
            totalPages: pageData.totalPages,
            isLoadingMore: false,
          ),
        );
      },
      failure: (err, _, msg) {
        emit(state.copyWith(isLoadingMore: false, errorMessage: msg));
      },
      loading: () {},
      empty: () {
        emit(state.copyWith(isLoadingMore: false));
      },
    );
  }
}
