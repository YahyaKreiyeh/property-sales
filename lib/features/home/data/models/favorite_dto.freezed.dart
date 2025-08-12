// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FavoriteRequestDto {

@JsonKey(name: 'product_id') List<int> get productId;
/// Create a copy of FavoriteRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavoriteRequestDtoCopyWith<FavoriteRequestDto> get copyWith => _$FavoriteRequestDtoCopyWithImpl<FavoriteRequestDto>(this as FavoriteRequestDto, _$identity);

  /// Serializes this FavoriteRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoriteRequestDto&&const DeepCollectionEquality().equals(other.productId, productId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(productId));

@override
String toString() {
  return 'FavoriteRequestDto(productId: $productId)';
}


}

/// @nodoc
abstract mixin class $FavoriteRequestDtoCopyWith<$Res>  {
  factory $FavoriteRequestDtoCopyWith(FavoriteRequestDto value, $Res Function(FavoriteRequestDto) _then) = _$FavoriteRequestDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'product_id') List<int> productId
});




}
/// @nodoc
class _$FavoriteRequestDtoCopyWithImpl<$Res>
    implements $FavoriteRequestDtoCopyWith<$Res> {
  _$FavoriteRequestDtoCopyWithImpl(this._self, this._then);

  final FavoriteRequestDto _self;
  final $Res Function(FavoriteRequestDto) _then;

/// Create a copy of FavoriteRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,}) {
  return _then(_self.copyWith(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}

}


/// Adds pattern-matching-related methods to [FavoriteRequestDto].
extension FavoriteRequestDtoPatterns on FavoriteRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FavoriteRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FavoriteRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FavoriteRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _FavoriteRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FavoriteRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _FavoriteRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_id')  List<int> productId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FavoriteRequestDto() when $default != null:
return $default(_that.productId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_id')  List<int> productId)  $default,) {final _that = this;
switch (_that) {
case _FavoriteRequestDto():
return $default(_that.productId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'product_id')  List<int> productId)?  $default,) {final _that = this;
switch (_that) {
case _FavoriteRequestDto() when $default != null:
return $default(_that.productId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FavoriteRequestDto implements FavoriteRequestDto {
  const _FavoriteRequestDto({@JsonKey(name: 'product_id') required final  List<int> productId}): _productId = productId;
  factory _FavoriteRequestDto.fromJson(Map<String, dynamic> json) => _$FavoriteRequestDtoFromJson(json);

 final  List<int> _productId;
@override@JsonKey(name: 'product_id') List<int> get productId {
  if (_productId is EqualUnmodifiableListView) return _productId;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_productId);
}


/// Create a copy of FavoriteRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FavoriteRequestDtoCopyWith<_FavoriteRequestDto> get copyWith => __$FavoriteRequestDtoCopyWithImpl<_FavoriteRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FavoriteRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavoriteRequestDto&&const DeepCollectionEquality().equals(other._productId, _productId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_productId));

@override
String toString() {
  return 'FavoriteRequestDto(productId: $productId)';
}


}

/// @nodoc
abstract mixin class _$FavoriteRequestDtoCopyWith<$Res> implements $FavoriteRequestDtoCopyWith<$Res> {
  factory _$FavoriteRequestDtoCopyWith(_FavoriteRequestDto value, $Res Function(_FavoriteRequestDto) _then) = __$FavoriteRequestDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'product_id') List<int> productId
});




}
/// @nodoc
class __$FavoriteRequestDtoCopyWithImpl<$Res>
    implements _$FavoriteRequestDtoCopyWith<$Res> {
  __$FavoriteRequestDtoCopyWithImpl(this._self, this._then);

  final _FavoriteRequestDto _self;
  final $Res Function(_FavoriteRequestDto) _then;

/// Create a copy of FavoriteRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,}) {
  return _then(_FavoriteRequestDto(
productId: null == productId ? _self._productId : productId // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}


/// @nodoc
mixin _$FavoriteResponseDto {

 String? get message; bool? get success;
/// Create a copy of FavoriteResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavoriteResponseDtoCopyWith<FavoriteResponseDto> get copyWith => _$FavoriteResponseDtoCopyWithImpl<FavoriteResponseDto>(this as FavoriteResponseDto, _$identity);

  /// Serializes this FavoriteResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoriteResponseDto&&(identical(other.message, message) || other.message == message)&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,success);

@override
String toString() {
  return 'FavoriteResponseDto(message: $message, success: $success)';
}


}

/// @nodoc
abstract mixin class $FavoriteResponseDtoCopyWith<$Res>  {
  factory $FavoriteResponseDtoCopyWith(FavoriteResponseDto value, $Res Function(FavoriteResponseDto) _then) = _$FavoriteResponseDtoCopyWithImpl;
@useResult
$Res call({
 String? message, bool? success
});




}
/// @nodoc
class _$FavoriteResponseDtoCopyWithImpl<$Res>
    implements $FavoriteResponseDtoCopyWith<$Res> {
  _$FavoriteResponseDtoCopyWithImpl(this._self, this._then);

  final FavoriteResponseDto _self;
  final $Res Function(FavoriteResponseDto) _then;

/// Create a copy of FavoriteResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = freezed,Object? success = freezed,}) {
  return _then(_self.copyWith(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [FavoriteResponseDto].
extension FavoriteResponseDtoPatterns on FavoriteResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FavoriteResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FavoriteResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FavoriteResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _FavoriteResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FavoriteResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _FavoriteResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? message,  bool? success)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FavoriteResponseDto() when $default != null:
return $default(_that.message,_that.success);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? message,  bool? success)  $default,) {final _that = this;
switch (_that) {
case _FavoriteResponseDto():
return $default(_that.message,_that.success);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? message,  bool? success)?  $default,) {final _that = this;
switch (_that) {
case _FavoriteResponseDto() when $default != null:
return $default(_that.message,_that.success);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FavoriteResponseDto implements FavoriteResponseDto {
  const _FavoriteResponseDto({this.message, this.success});
  factory _FavoriteResponseDto.fromJson(Map<String, dynamic> json) => _$FavoriteResponseDtoFromJson(json);

@override final  String? message;
@override final  bool? success;

/// Create a copy of FavoriteResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FavoriteResponseDtoCopyWith<_FavoriteResponseDto> get copyWith => __$FavoriteResponseDtoCopyWithImpl<_FavoriteResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FavoriteResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavoriteResponseDto&&(identical(other.message, message) || other.message == message)&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,success);

@override
String toString() {
  return 'FavoriteResponseDto(message: $message, success: $success)';
}


}

/// @nodoc
abstract mixin class _$FavoriteResponseDtoCopyWith<$Res> implements $FavoriteResponseDtoCopyWith<$Res> {
  factory _$FavoriteResponseDtoCopyWith(_FavoriteResponseDto value, $Res Function(_FavoriteResponseDto) _then) = __$FavoriteResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String? message, bool? success
});




}
/// @nodoc
class __$FavoriteResponseDtoCopyWithImpl<$Res>
    implements _$FavoriteResponseDtoCopyWith<$Res> {
  __$FavoriteResponseDtoCopyWithImpl(this._self, this._then);

  final _FavoriteResponseDto _self;
  final $Res Function(_FavoriteResponseDto) _then;

/// Create a copy of FavoriteResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,Object? success = freezed,}) {
  return _then(_FavoriteResponseDto(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
