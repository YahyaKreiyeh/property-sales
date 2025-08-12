// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CategoryDto {

 int get id; String get name;@JsonKey(name: 'small_image_url') String? get smallImageUrl;
/// Create a copy of CategoryDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryDtoCopyWith<CategoryDto> get copyWith => _$CategoryDtoCopyWithImpl<CategoryDto>(this as CategoryDto, _$identity);

  /// Serializes this CategoryDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.smallImageUrl, smallImageUrl) || other.smallImageUrl == smallImageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,smallImageUrl);

@override
String toString() {
  return 'CategoryDto(id: $id, name: $name, smallImageUrl: $smallImageUrl)';
}


}

/// @nodoc
abstract mixin class $CategoryDtoCopyWith<$Res>  {
  factory $CategoryDtoCopyWith(CategoryDto value, $Res Function(CategoryDto) _then) = _$CategoryDtoCopyWithImpl;
@useResult
$Res call({
 int id, String name,@JsonKey(name: 'small_image_url') String? smallImageUrl
});




}
/// @nodoc
class _$CategoryDtoCopyWithImpl<$Res>
    implements $CategoryDtoCopyWith<$Res> {
  _$CategoryDtoCopyWithImpl(this._self, this._then);

  final CategoryDto _self;
  final $Res Function(CategoryDto) _then;

/// Create a copy of CategoryDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? smallImageUrl = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,smallImageUrl: freezed == smallImageUrl ? _self.smallImageUrl : smallImageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryDto].
extension CategoryDtoPatterns on CategoryDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryDto value)  $default,){
final _that = this;
switch (_that) {
case _CategoryDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryDto value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name, @JsonKey(name: 'small_image_url')  String? smallImageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryDto() when $default != null:
return $default(_that.id,_that.name,_that.smallImageUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name, @JsonKey(name: 'small_image_url')  String? smallImageUrl)  $default,) {final _that = this;
switch (_that) {
case _CategoryDto():
return $default(_that.id,_that.name,_that.smallImageUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name, @JsonKey(name: 'small_image_url')  String? smallImageUrl)?  $default,) {final _that = this;
switch (_that) {
case _CategoryDto() when $default != null:
return $default(_that.id,_that.name,_that.smallImageUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryDto implements CategoryDto {
  const _CategoryDto({required this.id, required this.name, @JsonKey(name: 'small_image_url') this.smallImageUrl});
  factory _CategoryDto.fromJson(Map<String, dynamic> json) => _$CategoryDtoFromJson(json);

@override final  int id;
@override final  String name;
@override@JsonKey(name: 'small_image_url') final  String? smallImageUrl;

/// Create a copy of CategoryDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryDtoCopyWith<_CategoryDto> get copyWith => __$CategoryDtoCopyWithImpl<_CategoryDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.smallImageUrl, smallImageUrl) || other.smallImageUrl == smallImageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,smallImageUrl);

@override
String toString() {
  return 'CategoryDto(id: $id, name: $name, smallImageUrl: $smallImageUrl)';
}


}

/// @nodoc
abstract mixin class _$CategoryDtoCopyWith<$Res> implements $CategoryDtoCopyWith<$Res> {
  factory _$CategoryDtoCopyWith(_CategoryDto value, $Res Function(_CategoryDto) _then) = __$CategoryDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String name,@JsonKey(name: 'small_image_url') String? smallImageUrl
});




}
/// @nodoc
class __$CategoryDtoCopyWithImpl<$Res>
    implements _$CategoryDtoCopyWith<$Res> {
  __$CategoryDtoCopyWithImpl(this._self, this._then);

  final _CategoryDto _self;
  final $Res Function(_CategoryDto) _then;

/// Create a copy of CategoryDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? smallImageUrl = freezed,}) {
  return _then(_CategoryDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,smallImageUrl: freezed == smallImageUrl ? _self.smallImageUrl : smallImageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CategoriesResponse {

 List<CategoryDto> get data; String? get message; int? get all; int? get totalpages;
/// Create a copy of CategoriesResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoriesResponseCopyWith<CategoriesResponse> get copyWith => _$CategoriesResponseCopyWithImpl<CategoriesResponse>(this as CategoriesResponse, _$identity);

  /// Serializes this CategoriesResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoriesResponse&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.message, message) || other.message == message)&&(identical(other.all, all) || other.all == all)&&(identical(other.totalpages, totalpages) || other.totalpages == totalpages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),message,all,totalpages);

@override
String toString() {
  return 'CategoriesResponse(data: $data, message: $message, all: $all, totalpages: $totalpages)';
}


}

/// @nodoc
abstract mixin class $CategoriesResponseCopyWith<$Res>  {
  factory $CategoriesResponseCopyWith(CategoriesResponse value, $Res Function(CategoriesResponse) _then) = _$CategoriesResponseCopyWithImpl;
@useResult
$Res call({
 List<CategoryDto> data, String? message, int? all, int? totalpages
});




}
/// @nodoc
class _$CategoriesResponseCopyWithImpl<$Res>
    implements $CategoriesResponseCopyWith<$Res> {
  _$CategoriesResponseCopyWithImpl(this._self, this._then);

  final CategoriesResponse _self;
  final $Res Function(CategoriesResponse) _then;

/// Create a copy of CategoriesResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? message = freezed,Object? all = freezed,Object? totalpages = freezed,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<CategoryDto>,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,all: freezed == all ? _self.all : all // ignore: cast_nullable_to_non_nullable
as int?,totalpages: freezed == totalpages ? _self.totalpages : totalpages // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoriesResponse].
extension CategoriesResponsePatterns on CategoriesResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoriesResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoriesResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoriesResponse value)  $default,){
final _that = this;
switch (_that) {
case _CategoriesResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoriesResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CategoriesResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CategoryDto> data,  String? message,  int? all,  int? totalpages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoriesResponse() when $default != null:
return $default(_that.data,_that.message,_that.all,_that.totalpages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CategoryDto> data,  String? message,  int? all,  int? totalpages)  $default,) {final _that = this;
switch (_that) {
case _CategoriesResponse():
return $default(_that.data,_that.message,_that.all,_that.totalpages);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CategoryDto> data,  String? message,  int? all,  int? totalpages)?  $default,) {final _that = this;
switch (_that) {
case _CategoriesResponse() when $default != null:
return $default(_that.data,_that.message,_that.all,_that.totalpages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoriesResponse implements CategoriesResponse {
  const _CategoriesResponse({final  List<CategoryDto> data = const [], this.message, this.all, this.totalpages}): _data = data;
  factory _CategoriesResponse.fromJson(Map<String, dynamic> json) => _$CategoriesResponseFromJson(json);

 final  List<CategoryDto> _data;
@override@JsonKey() List<CategoryDto> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  String? message;
@override final  int? all;
@override final  int? totalpages;

/// Create a copy of CategoriesResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoriesResponseCopyWith<_CategoriesResponse> get copyWith => __$CategoriesResponseCopyWithImpl<_CategoriesResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoriesResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoriesResponse&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.message, message) || other.message == message)&&(identical(other.all, all) || other.all == all)&&(identical(other.totalpages, totalpages) || other.totalpages == totalpages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),message,all,totalpages);

@override
String toString() {
  return 'CategoriesResponse(data: $data, message: $message, all: $all, totalpages: $totalpages)';
}


}

/// @nodoc
abstract mixin class _$CategoriesResponseCopyWith<$Res> implements $CategoriesResponseCopyWith<$Res> {
  factory _$CategoriesResponseCopyWith(_CategoriesResponse value, $Res Function(_CategoriesResponse) _then) = __$CategoriesResponseCopyWithImpl;
@override @useResult
$Res call({
 List<CategoryDto> data, String? message, int? all, int? totalpages
});




}
/// @nodoc
class __$CategoriesResponseCopyWithImpl<$Res>
    implements _$CategoriesResponseCopyWith<$Res> {
  __$CategoriesResponseCopyWithImpl(this._self, this._then);

  final _CategoriesResponse _self;
  final $Res Function(_CategoriesResponse) _then;

/// Create a copy of CategoriesResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? message = freezed,Object? all = freezed,Object? totalpages = freezed,}) {
  return _then(_CategoriesResponse(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<CategoryDto>,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,all: freezed == all ? _self.all : all // ignore: cast_nullable_to_non_nullable
as int?,totalpages: freezed == totalpages ? _self.totalpages : totalpages // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
