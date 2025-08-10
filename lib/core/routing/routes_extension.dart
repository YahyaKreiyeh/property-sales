import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

extension Navigation on BuildContext {
  // ---- Named routes ----
  Future<T?> pushNamed<T extends Object?>(
    String routeName, {
    Map<String, String> pathParameters = const {},
    Map<String, String> queryParameters = const {},
    Object? extra,
  }) {
    return GoRouter.of(this).pushNamed<T>(
      routeName,
      pathParameters: pathParameters,
      queryParameters: queryParameters,
      extra: extra,
    );
  }

  Future<T?> pushReplacementNamed<T extends Object?>(
    String routeName, {
    Map<String, String> pathParameters = const {},
    Map<String, String> queryParameters = const {},
    Object? extra,
  }) {
    return GoRouter.of(this).replaceNamed<T>(
      routeName,
      pathParameters: pathParameters,
      queryParameters: queryParameters,
      extra: extra,
    );
  }

  void goNamed(
    String routeName, {
    Map<String, String> pathParameters = const {},
    Map<String, String> queryParameters = const {},
    Object? extra,
  }) {
    GoRouter.of(this).goNamed(
      routeName,
      pathParameters: pathParameters,
      queryParameters: queryParameters,
      extra: extra,
    );
  }

  // ---- Path-based routes (sometimes simpler) ----
  Future<T?> push<T extends Object?>(String location, {Object? extra}) {
    return GoRouter.of(this).push<T>(location, extra: extra);
  }

  Future<T?> replace<T extends Object?>(String location, {Object? extra}) {
    return GoRouter.of(this).replace<T>(location, extra: extra);
  }

  void go(String location, {Object? extra}) {
    GoRouter.of(this).go(location, extra: extra);
  }

  void pop<T extends Object?>([T? result]) {
    GoRouter.of(this).pop<T>(result);
  }

  bool canPop() {
    try {
      return GoRouter.of(this).canPop();
    } catch (_) {
      return Navigator.of(this).canPop();
    }
  }
}
