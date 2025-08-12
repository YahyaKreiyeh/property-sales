// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FilterEntity {

 int get websiteType; String get searchTerm; int get page; int get limit; double? get minPrice; double? get maxPrice; List<int> get categoryIds; int? get cityId;
/// Create a copy of FilterEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FilterEntityCopyWith<FilterEntity> get copyWith => _$FilterEntityCopyWithImpl<FilterEntity>(this as FilterEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FilterEntity&&(identical(other.websiteType, websiteType) || other.websiteType == websiteType)&&(identical(other.searchTerm, searchTerm) || other.searchTerm == searchTerm)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice)&&const DeepCollectionEquality().equals(other.categoryIds, categoryIds)&&(identical(other.cityId, cityId) || other.cityId == cityId));
}


@override
int get hashCode => Object.hash(runtimeType,websiteType,searchTerm,page,limit,minPrice,maxPrice,const DeepCollectionEquality().hash(categoryIds),cityId);

@override
String toString() {
  return 'FilterEntity(websiteType: $websiteType, searchTerm: $searchTerm, page: $page, limit: $limit, minPrice: $minPrice, maxPrice: $maxPrice, categoryIds: $categoryIds, cityId: $cityId)';
}


}

/// @nodoc
abstract mixin class $FilterEntityCopyWith<$Res>  {
  factory $FilterEntityCopyWith(FilterEntity value, $Res Function(FilterEntity) _then) = _$FilterEntityCopyWithImpl;
@useResult
$Res call({
 int websiteType, String searchTerm, int page, int limit, double? minPrice, double? maxPrice, List<int> categoryIds, int? cityId
});




}
/// @nodoc
class _$FilterEntityCopyWithImpl<$Res>
    implements $FilterEntityCopyWith<$Res> {
  _$FilterEntityCopyWithImpl(this._self, this._then);

  final FilterEntity _self;
  final $Res Function(FilterEntity) _then;

/// Create a copy of FilterEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? websiteType = null,Object? searchTerm = null,Object? page = null,Object? limit = null,Object? minPrice = freezed,Object? maxPrice = freezed,Object? categoryIds = null,Object? cityId = freezed,}) {
  return _then(_self.copyWith(
websiteType: null == websiteType ? _self.websiteType : websiteType // ignore: cast_nullable_to_non_nullable
as int,searchTerm: null == searchTerm ? _self.searchTerm : searchTerm // ignore: cast_nullable_to_non_nullable
as String,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,minPrice: freezed == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as double?,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as double?,categoryIds: null == categoryIds ? _self.categoryIds : categoryIds // ignore: cast_nullable_to_non_nullable
as List<int>,cityId: freezed == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [FilterEntity].
extension FilterEntityPatterns on FilterEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FilterEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FilterEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FilterEntity value)  $default,){
final _that = this;
switch (_that) {
case _FilterEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FilterEntity value)?  $default,){
final _that = this;
switch (_that) {
case _FilterEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int websiteType,  String searchTerm,  int page,  int limit,  double? minPrice,  double? maxPrice,  List<int> categoryIds,  int? cityId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FilterEntity() when $default != null:
return $default(_that.websiteType,_that.searchTerm,_that.page,_that.limit,_that.minPrice,_that.maxPrice,_that.categoryIds,_that.cityId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int websiteType,  String searchTerm,  int page,  int limit,  double? minPrice,  double? maxPrice,  List<int> categoryIds,  int? cityId)  $default,) {final _that = this;
switch (_that) {
case _FilterEntity():
return $default(_that.websiteType,_that.searchTerm,_that.page,_that.limit,_that.minPrice,_that.maxPrice,_that.categoryIds,_that.cityId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int websiteType,  String searchTerm,  int page,  int limit,  double? minPrice,  double? maxPrice,  List<int> categoryIds,  int? cityId)?  $default,) {final _that = this;
switch (_that) {
case _FilterEntity() when $default != null:
return $default(_that.websiteType,_that.searchTerm,_that.page,_that.limit,_that.minPrice,_that.maxPrice,_that.categoryIds,_that.cityId);case _:
  return null;

}
}

}

/// @nodoc


class _FilterEntity implements FilterEntity {
  const _FilterEntity({this.websiteType = 0, this.searchTerm = '', this.page = 1, this.limit = 10, this.minPrice, this.maxPrice, final  List<int> categoryIds = const [], this.cityId}): _categoryIds = categoryIds;
  

@override@JsonKey() final  int websiteType;
@override@JsonKey() final  String searchTerm;
@override@JsonKey() final  int page;
@override@JsonKey() final  int limit;
@override final  double? minPrice;
@override final  double? maxPrice;
 final  List<int> _categoryIds;
@override@JsonKey() List<int> get categoryIds {
  if (_categoryIds is EqualUnmodifiableListView) return _categoryIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categoryIds);
}

@override final  int? cityId;

/// Create a copy of FilterEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FilterEntityCopyWith<_FilterEntity> get copyWith => __$FilterEntityCopyWithImpl<_FilterEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FilterEntity&&(identical(other.websiteType, websiteType) || other.websiteType == websiteType)&&(identical(other.searchTerm, searchTerm) || other.searchTerm == searchTerm)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice)&&const DeepCollectionEquality().equals(other._categoryIds, _categoryIds)&&(identical(other.cityId, cityId) || other.cityId == cityId));
}


@override
int get hashCode => Object.hash(runtimeType,websiteType,searchTerm,page,limit,minPrice,maxPrice,const DeepCollectionEquality().hash(_categoryIds),cityId);

@override
String toString() {
  return 'FilterEntity(websiteType: $websiteType, searchTerm: $searchTerm, page: $page, limit: $limit, minPrice: $minPrice, maxPrice: $maxPrice, categoryIds: $categoryIds, cityId: $cityId)';
}


}

/// @nodoc
abstract mixin class _$FilterEntityCopyWith<$Res> implements $FilterEntityCopyWith<$Res> {
  factory _$FilterEntityCopyWith(_FilterEntity value, $Res Function(_FilterEntity) _then) = __$FilterEntityCopyWithImpl;
@override @useResult
$Res call({
 int websiteType, String searchTerm, int page, int limit, double? minPrice, double? maxPrice, List<int> categoryIds, int? cityId
});




}
/// @nodoc
class __$FilterEntityCopyWithImpl<$Res>
    implements _$FilterEntityCopyWith<$Res> {
  __$FilterEntityCopyWithImpl(this._self, this._then);

  final _FilterEntity _self;
  final $Res Function(_FilterEntity) _then;

/// Create a copy of FilterEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? websiteType = null,Object? searchTerm = null,Object? page = null,Object? limit = null,Object? minPrice = freezed,Object? maxPrice = freezed,Object? categoryIds = null,Object? cityId = freezed,}) {
  return _then(_FilterEntity(
websiteType: null == websiteType ? _self.websiteType : websiteType // ignore: cast_nullable_to_non_nullable
as int,searchTerm: null == searchTerm ? _self.searchTerm : searchTerm // ignore: cast_nullable_to_non_nullable
as String,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,minPrice: freezed == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as double?,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as double?,categoryIds: null == categoryIds ? _self._categoryIds : categoryIds // ignore: cast_nullable_to_non_nullable
as List<int>,cityId: freezed == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc
mixin _$CityEntity {

 int get id; String get name; String? get nameAr;
/// Create a copy of CityEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CityEntityCopyWith<CityEntity> get copyWith => _$CityEntityCopyWithImpl<CityEntity>(this as CityEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CityEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.nameAr, nameAr) || other.nameAr == nameAr));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,nameAr);

@override
String toString() {
  return 'CityEntity(id: $id, name: $name, nameAr: $nameAr)';
}


}

/// @nodoc
abstract mixin class $CityEntityCopyWith<$Res>  {
  factory $CityEntityCopyWith(CityEntity value, $Res Function(CityEntity) _then) = _$CityEntityCopyWithImpl;
@useResult
$Res call({
 int id, String name, String? nameAr
});




}
/// @nodoc
class _$CityEntityCopyWithImpl<$Res>
    implements $CityEntityCopyWith<$Res> {
  _$CityEntityCopyWithImpl(this._self, this._then);

  final CityEntity _self;
  final $Res Function(CityEntity) _then;

/// Create a copy of CityEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? nameAr = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nameAr: freezed == nameAr ? _self.nameAr : nameAr // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CityEntity].
extension CityEntityPatterns on CityEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CityEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CityEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CityEntity value)  $default,){
final _that = this;
switch (_that) {
case _CityEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CityEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CityEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String? nameAr)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CityEntity() when $default != null:
return $default(_that.id,_that.name,_that.nameAr);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String? nameAr)  $default,) {final _that = this;
switch (_that) {
case _CityEntity():
return $default(_that.id,_that.name,_that.nameAr);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String? nameAr)?  $default,) {final _that = this;
switch (_that) {
case _CityEntity() when $default != null:
return $default(_that.id,_that.name,_that.nameAr);case _:
  return null;

}
}

}

/// @nodoc


class _CityEntity implements CityEntity {
  const _CityEntity({required this.id, required this.name, this.nameAr});
  

@override final  int id;
@override final  String name;
@override final  String? nameAr;

/// Create a copy of CityEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CityEntityCopyWith<_CityEntity> get copyWith => __$CityEntityCopyWithImpl<_CityEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CityEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.nameAr, nameAr) || other.nameAr == nameAr));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,nameAr);

@override
String toString() {
  return 'CityEntity(id: $id, name: $name, nameAr: $nameAr)';
}


}

/// @nodoc
abstract mixin class _$CityEntityCopyWith<$Res> implements $CityEntityCopyWith<$Res> {
  factory _$CityEntityCopyWith(_CityEntity value, $Res Function(_CityEntity) _then) = __$CityEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String? nameAr
});




}
/// @nodoc
class __$CityEntityCopyWithImpl<$Res>
    implements _$CityEntityCopyWith<$Res> {
  __$CityEntityCopyWithImpl(this._self, this._then);

  final _CityEntity _self;
  final $Res Function(_CityEntity) _then;

/// Create a copy of CityEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? nameAr = freezed,}) {
  return _then(_CityEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nameAr: freezed == nameAr ? _self.nameAr : nameAr // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
