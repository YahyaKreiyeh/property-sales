// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState {

 Result<ProductPage> get status; Result<List<CategoryEntity>> get categoriesStatus; String get searchTerm; int get page; int get limit; List<ProductEntity> get items; List<CategoryEntity> get categories; bool get isLoadingMore; String? get loadMoreError; FilterEntity get currentFilter;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&(identical(other.status, status) || other.status == status)&&(identical(other.categoriesStatus, categoriesStatus) || other.categoriesStatus == categoriesStatus)&&(identical(other.searchTerm, searchTerm) || other.searchTerm == searchTerm)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&const DeepCollectionEquality().equals(other.items, items)&&const DeepCollectionEquality().equals(other.categories, categories)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.loadMoreError, loadMoreError) || other.loadMoreError == loadMoreError)&&(identical(other.currentFilter, currentFilter) || other.currentFilter == currentFilter));
}


@override
int get hashCode => Object.hash(runtimeType,status,categoriesStatus,searchTerm,page,limit,const DeepCollectionEquality().hash(items),const DeepCollectionEquality().hash(categories),isLoadingMore,loadMoreError,currentFilter);

@override
String toString() {
  return 'HomeState(status: $status, categoriesStatus: $categoriesStatus, searchTerm: $searchTerm, page: $page, limit: $limit, items: $items, categories: $categories, isLoadingMore: $isLoadingMore, loadMoreError: $loadMoreError, currentFilter: $currentFilter)';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 Result<ProductPage> status, Result<List<CategoryEntity>> categoriesStatus, String searchTerm, int page, int limit, List<ProductEntity> items, List<CategoryEntity> categories, bool isLoadingMore, String? loadMoreError, FilterEntity currentFilter
});


$ResultCopyWith<ProductPage, $Res> get status;$ResultCopyWith<List<CategoryEntity>, $Res> get categoriesStatus;$FilterEntityCopyWith<$Res> get currentFilter;

}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? categoriesStatus = null,Object? searchTerm = null,Object? page = null,Object? limit = null,Object? items = null,Object? categories = null,Object? isLoadingMore = null,Object? loadMoreError = freezed,Object? currentFilter = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Result<ProductPage>,categoriesStatus: null == categoriesStatus ? _self.categoriesStatus : categoriesStatus // ignore: cast_nullable_to_non_nullable
as Result<List<CategoryEntity>>,searchTerm: null == searchTerm ? _self.searchTerm : searchTerm // ignore: cast_nullable_to_non_nullable
as String,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ProductEntity>,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryEntity>,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,loadMoreError: freezed == loadMoreError ? _self.loadMoreError : loadMoreError // ignore: cast_nullable_to_non_nullable
as String?,currentFilter: null == currentFilter ? _self.currentFilter : currentFilter // ignore: cast_nullable_to_non_nullable
as FilterEntity,
  ));
}
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResultCopyWith<ProductPage, $Res> get status {
  
  return $ResultCopyWith<ProductPage, $Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResultCopyWith<List<CategoryEntity>, $Res> get categoriesStatus {
  
  return $ResultCopyWith<List<CategoryEntity>, $Res>(_self.categoriesStatus, (value) {
    return _then(_self.copyWith(categoriesStatus: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FilterEntityCopyWith<$Res> get currentFilter {
  
  return $FilterEntityCopyWith<$Res>(_self.currentFilter, (value) {
    return _then(_self.copyWith(currentFilter: value));
  });
}
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeState value)  $default,){
final _that = this;
switch (_that) {
case _HomeState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeState value)?  $default,){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Result<ProductPage> status,  Result<List<CategoryEntity>> categoriesStatus,  String searchTerm,  int page,  int limit,  List<ProductEntity> items,  List<CategoryEntity> categories,  bool isLoadingMore,  String? loadMoreError,  FilterEntity currentFilter)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.status,_that.categoriesStatus,_that.searchTerm,_that.page,_that.limit,_that.items,_that.categories,_that.isLoadingMore,_that.loadMoreError,_that.currentFilter);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Result<ProductPage> status,  Result<List<CategoryEntity>> categoriesStatus,  String searchTerm,  int page,  int limit,  List<ProductEntity> items,  List<CategoryEntity> categories,  bool isLoadingMore,  String? loadMoreError,  FilterEntity currentFilter)  $default,) {final _that = this;
switch (_that) {
case _HomeState():
return $default(_that.status,_that.categoriesStatus,_that.searchTerm,_that.page,_that.limit,_that.items,_that.categories,_that.isLoadingMore,_that.loadMoreError,_that.currentFilter);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Result<ProductPage> status,  Result<List<CategoryEntity>> categoriesStatus,  String searchTerm,  int page,  int limit,  List<ProductEntity> items,  List<CategoryEntity> categories,  bool isLoadingMore,  String? loadMoreError,  FilterEntity currentFilter)?  $default,) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.status,_that.categoriesStatus,_that.searchTerm,_that.page,_that.limit,_that.items,_that.categories,_that.isLoadingMore,_that.loadMoreError,_that.currentFilter);case _:
  return null;

}
}

}

/// @nodoc


class _HomeState implements HomeState {
  const _HomeState({this.status = const Result.empty(), this.categoriesStatus = const Result.empty(), this.searchTerm = '', this.page = 1, this.limit = 10, final  List<ProductEntity> items = const <ProductEntity>[], final  List<CategoryEntity> categories = const <CategoryEntity>[], this.isLoadingMore = false, this.loadMoreError, this.currentFilter = const FilterEntity()}): _items = items,_categories = categories;
  

@override@JsonKey() final  Result<ProductPage> status;
@override@JsonKey() final  Result<List<CategoryEntity>> categoriesStatus;
@override@JsonKey() final  String searchTerm;
@override@JsonKey() final  int page;
@override@JsonKey() final  int limit;
 final  List<ProductEntity> _items;
@override@JsonKey() List<ProductEntity> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

 final  List<CategoryEntity> _categories;
@override@JsonKey() List<CategoryEntity> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override@JsonKey() final  bool isLoadingMore;
@override final  String? loadMoreError;
@override@JsonKey() final  FilterEntity currentFilter;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeStateCopyWith<_HomeState> get copyWith => __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeState&&(identical(other.status, status) || other.status == status)&&(identical(other.categoriesStatus, categoriesStatus) || other.categoriesStatus == categoriesStatus)&&(identical(other.searchTerm, searchTerm) || other.searchTerm == searchTerm)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&const DeepCollectionEquality().equals(other._items, _items)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.loadMoreError, loadMoreError) || other.loadMoreError == loadMoreError)&&(identical(other.currentFilter, currentFilter) || other.currentFilter == currentFilter));
}


@override
int get hashCode => Object.hash(runtimeType,status,categoriesStatus,searchTerm,page,limit,const DeepCollectionEquality().hash(_items),const DeepCollectionEquality().hash(_categories),isLoadingMore,loadMoreError,currentFilter);

@override
String toString() {
  return 'HomeState(status: $status, categoriesStatus: $categoriesStatus, searchTerm: $searchTerm, page: $page, limit: $limit, items: $items, categories: $categories, isLoadingMore: $isLoadingMore, loadMoreError: $loadMoreError, currentFilter: $currentFilter)';
}


}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(_HomeState value, $Res Function(_HomeState) _then) = __$HomeStateCopyWithImpl;
@override @useResult
$Res call({
 Result<ProductPage> status, Result<List<CategoryEntity>> categoriesStatus, String searchTerm, int page, int limit, List<ProductEntity> items, List<CategoryEntity> categories, bool isLoadingMore, String? loadMoreError, FilterEntity currentFilter
});


@override $ResultCopyWith<ProductPage, $Res> get status;@override $ResultCopyWith<List<CategoryEntity>, $Res> get categoriesStatus;@override $FilterEntityCopyWith<$Res> get currentFilter;

}
/// @nodoc
class __$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? categoriesStatus = null,Object? searchTerm = null,Object? page = null,Object? limit = null,Object? items = null,Object? categories = null,Object? isLoadingMore = null,Object? loadMoreError = freezed,Object? currentFilter = null,}) {
  return _then(_HomeState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Result<ProductPage>,categoriesStatus: null == categoriesStatus ? _self.categoriesStatus : categoriesStatus // ignore: cast_nullable_to_non_nullable
as Result<List<CategoryEntity>>,searchTerm: null == searchTerm ? _self.searchTerm : searchTerm // ignore: cast_nullable_to_non_nullable
as String,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ProductEntity>,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryEntity>,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,loadMoreError: freezed == loadMoreError ? _self.loadMoreError : loadMoreError // ignore: cast_nullable_to_non_nullable
as String?,currentFilter: null == currentFilter ? _self.currentFilter : currentFilter // ignore: cast_nullable_to_non_nullable
as FilterEntity,
  ));
}

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResultCopyWith<ProductPage, $Res> get status {
  
  return $ResultCopyWith<ProductPage, $Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResultCopyWith<List<CategoryEntity>, $Res> get categoriesStatus {
  
  return $ResultCopyWith<List<CategoryEntity>, $Res>(_self.categoriesStatus, (value) {
    return _then(_self.copyWith(categoriesStatus: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FilterEntityCopyWith<$Res> get currentFilter {
  
  return $FilterEntityCopyWith<$Res>(_self.currentFilter, (value) {
    return _then(_self.copyWith(currentFilter: value));
  });
}
}

// dart format on
