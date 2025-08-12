// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FilterRequestDto {

@JsonKey(name: 'website_type') int get websiteType;@JsonKey(name: 'search_term') String get searchTerm; int get page; int get limit;@JsonKey(name: 'min_price') double? get minPrice;@JsonKey(name: 'max_price') double? get maxPrice;@JsonKey(name: 'category_ids') List<int> get categoryIds;@JsonKey(name: 'city_id') int? get cityId;
/// Create a copy of FilterRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FilterRequestDtoCopyWith<FilterRequestDto> get copyWith => _$FilterRequestDtoCopyWithImpl<FilterRequestDto>(this as FilterRequestDto, _$identity);

  /// Serializes this FilterRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FilterRequestDto&&(identical(other.websiteType, websiteType) || other.websiteType == websiteType)&&(identical(other.searchTerm, searchTerm) || other.searchTerm == searchTerm)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice)&&const DeepCollectionEquality().equals(other.categoryIds, categoryIds)&&(identical(other.cityId, cityId) || other.cityId == cityId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,websiteType,searchTerm,page,limit,minPrice,maxPrice,const DeepCollectionEquality().hash(categoryIds),cityId);

@override
String toString() {
  return 'FilterRequestDto(websiteType: $websiteType, searchTerm: $searchTerm, page: $page, limit: $limit, minPrice: $minPrice, maxPrice: $maxPrice, categoryIds: $categoryIds, cityId: $cityId)';
}


}

/// @nodoc
abstract mixin class $FilterRequestDtoCopyWith<$Res>  {
  factory $FilterRequestDtoCopyWith(FilterRequestDto value, $Res Function(FilterRequestDto) _then) = _$FilterRequestDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'website_type') int websiteType,@JsonKey(name: 'search_term') String searchTerm, int page, int limit,@JsonKey(name: 'min_price') double? minPrice,@JsonKey(name: 'max_price') double? maxPrice,@JsonKey(name: 'category_ids') List<int> categoryIds,@JsonKey(name: 'city_id') int? cityId
});




}
/// @nodoc
class _$FilterRequestDtoCopyWithImpl<$Res>
    implements $FilterRequestDtoCopyWith<$Res> {
  _$FilterRequestDtoCopyWithImpl(this._self, this._then);

  final FilterRequestDto _self;
  final $Res Function(FilterRequestDto) _then;

/// Create a copy of FilterRequestDto
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


/// Adds pattern-matching-related methods to [FilterRequestDto].
extension FilterRequestDtoPatterns on FilterRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FilterRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FilterRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FilterRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _FilterRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FilterRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _FilterRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'website_type')  int websiteType, @JsonKey(name: 'search_term')  String searchTerm,  int page,  int limit, @JsonKey(name: 'min_price')  double? minPrice, @JsonKey(name: 'max_price')  double? maxPrice, @JsonKey(name: 'category_ids')  List<int> categoryIds, @JsonKey(name: 'city_id')  int? cityId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FilterRequestDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'website_type')  int websiteType, @JsonKey(name: 'search_term')  String searchTerm,  int page,  int limit, @JsonKey(name: 'min_price')  double? minPrice, @JsonKey(name: 'max_price')  double? maxPrice, @JsonKey(name: 'category_ids')  List<int> categoryIds, @JsonKey(name: 'city_id')  int? cityId)  $default,) {final _that = this;
switch (_that) {
case _FilterRequestDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'website_type')  int websiteType, @JsonKey(name: 'search_term')  String searchTerm,  int page,  int limit, @JsonKey(name: 'min_price')  double? minPrice, @JsonKey(name: 'max_price')  double? maxPrice, @JsonKey(name: 'category_ids')  List<int> categoryIds, @JsonKey(name: 'city_id')  int? cityId)?  $default,) {final _that = this;
switch (_that) {
case _FilterRequestDto() when $default != null:
return $default(_that.websiteType,_that.searchTerm,_that.page,_that.limit,_that.minPrice,_that.maxPrice,_that.categoryIds,_that.cityId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FilterRequestDto implements FilterRequestDto {
  const _FilterRequestDto({@JsonKey(name: 'website_type') this.websiteType = 0, @JsonKey(name: 'search_term') this.searchTerm = '', this.page = 1, this.limit = 10, @JsonKey(name: 'min_price') this.minPrice, @JsonKey(name: 'max_price') this.maxPrice, @JsonKey(name: 'category_ids') final  List<int> categoryIds = const [], @JsonKey(name: 'city_id') this.cityId}): _categoryIds = categoryIds;
  factory _FilterRequestDto.fromJson(Map<String, dynamic> json) => _$FilterRequestDtoFromJson(json);

@override@JsonKey(name: 'website_type') final  int websiteType;
@override@JsonKey(name: 'search_term') final  String searchTerm;
@override@JsonKey() final  int page;
@override@JsonKey() final  int limit;
@override@JsonKey(name: 'min_price') final  double? minPrice;
@override@JsonKey(name: 'max_price') final  double? maxPrice;
 final  List<int> _categoryIds;
@override@JsonKey(name: 'category_ids') List<int> get categoryIds {
  if (_categoryIds is EqualUnmodifiableListView) return _categoryIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categoryIds);
}

@override@JsonKey(name: 'city_id') final  int? cityId;

/// Create a copy of FilterRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FilterRequestDtoCopyWith<_FilterRequestDto> get copyWith => __$FilterRequestDtoCopyWithImpl<_FilterRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FilterRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FilterRequestDto&&(identical(other.websiteType, websiteType) || other.websiteType == websiteType)&&(identical(other.searchTerm, searchTerm) || other.searchTerm == searchTerm)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice)&&const DeepCollectionEquality().equals(other._categoryIds, _categoryIds)&&(identical(other.cityId, cityId) || other.cityId == cityId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,websiteType,searchTerm,page,limit,minPrice,maxPrice,const DeepCollectionEquality().hash(_categoryIds),cityId);

@override
String toString() {
  return 'FilterRequestDto(websiteType: $websiteType, searchTerm: $searchTerm, page: $page, limit: $limit, minPrice: $minPrice, maxPrice: $maxPrice, categoryIds: $categoryIds, cityId: $cityId)';
}


}

/// @nodoc
abstract mixin class _$FilterRequestDtoCopyWith<$Res> implements $FilterRequestDtoCopyWith<$Res> {
  factory _$FilterRequestDtoCopyWith(_FilterRequestDto value, $Res Function(_FilterRequestDto) _then) = __$FilterRequestDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'website_type') int websiteType,@JsonKey(name: 'search_term') String searchTerm, int page, int limit,@JsonKey(name: 'min_price') double? minPrice,@JsonKey(name: 'max_price') double? maxPrice,@JsonKey(name: 'category_ids') List<int> categoryIds,@JsonKey(name: 'city_id') int? cityId
});




}
/// @nodoc
class __$FilterRequestDtoCopyWithImpl<$Res>
    implements _$FilterRequestDtoCopyWith<$Res> {
  __$FilterRequestDtoCopyWithImpl(this._self, this._then);

  final _FilterRequestDto _self;
  final $Res Function(_FilterRequestDto) _then;

/// Create a copy of FilterRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? websiteType = null,Object? searchTerm = null,Object? page = null,Object? limit = null,Object? minPrice = freezed,Object? maxPrice = freezed,Object? categoryIds = null,Object? cityId = freezed,}) {
  return _then(_FilterRequestDto(
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
mixin _$CityDto {

 int get id; String get name;@JsonKey(name: 'name_ar') String? get nameAr;
/// Create a copy of CityDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CityDtoCopyWith<CityDto> get copyWith => _$CityDtoCopyWithImpl<CityDto>(this as CityDto, _$identity);

  /// Serializes this CityDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CityDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.nameAr, nameAr) || other.nameAr == nameAr));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,nameAr);

@override
String toString() {
  return 'CityDto(id: $id, name: $name, nameAr: $nameAr)';
}


}

/// @nodoc
abstract mixin class $CityDtoCopyWith<$Res>  {
  factory $CityDtoCopyWith(CityDto value, $Res Function(CityDto) _then) = _$CityDtoCopyWithImpl;
@useResult
$Res call({
 int id, String name,@JsonKey(name: 'name_ar') String? nameAr
});




}
/// @nodoc
class _$CityDtoCopyWithImpl<$Res>
    implements $CityDtoCopyWith<$Res> {
  _$CityDtoCopyWithImpl(this._self, this._then);

  final CityDto _self;
  final $Res Function(CityDto) _then;

/// Create a copy of CityDto
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


/// Adds pattern-matching-related methods to [CityDto].
extension CityDtoPatterns on CityDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CityDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CityDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CityDto value)  $default,){
final _that = this;
switch (_that) {
case _CityDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CityDto value)?  $default,){
final _that = this;
switch (_that) {
case _CityDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name, @JsonKey(name: 'name_ar')  String? nameAr)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CityDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name, @JsonKey(name: 'name_ar')  String? nameAr)  $default,) {final _that = this;
switch (_that) {
case _CityDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name, @JsonKey(name: 'name_ar')  String? nameAr)?  $default,) {final _that = this;
switch (_that) {
case _CityDto() when $default != null:
return $default(_that.id,_that.name,_that.nameAr);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CityDto implements CityDto {
  const _CityDto({required this.id, required this.name, @JsonKey(name: 'name_ar') this.nameAr});
  factory _CityDto.fromJson(Map<String, dynamic> json) => _$CityDtoFromJson(json);

@override final  int id;
@override final  String name;
@override@JsonKey(name: 'name_ar') final  String? nameAr;

/// Create a copy of CityDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CityDtoCopyWith<_CityDto> get copyWith => __$CityDtoCopyWithImpl<_CityDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CityDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CityDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.nameAr, nameAr) || other.nameAr == nameAr));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,nameAr);

@override
String toString() {
  return 'CityDto(id: $id, name: $name, nameAr: $nameAr)';
}


}

/// @nodoc
abstract mixin class _$CityDtoCopyWith<$Res> implements $CityDtoCopyWith<$Res> {
  factory _$CityDtoCopyWith(_CityDto value, $Res Function(_CityDto) _then) = __$CityDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String name,@JsonKey(name: 'name_ar') String? nameAr
});




}
/// @nodoc
class __$CityDtoCopyWithImpl<$Res>
    implements _$CityDtoCopyWith<$Res> {
  __$CityDtoCopyWithImpl(this._self, this._then);

  final _CityDto _self;
  final $Res Function(_CityDto) _then;

/// Create a copy of CityDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? nameAr = freezed,}) {
  return _then(_CityDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nameAr: freezed == nameAr ? _self.nameAr : nameAr // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
