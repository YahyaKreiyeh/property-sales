// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FavoriteResult {

 bool get success; String? get message;
/// Create a copy of FavoriteResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavoriteResultCopyWith<FavoriteResult> get copyWith => _$FavoriteResultCopyWithImpl<FavoriteResult>(this as FavoriteResult, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoriteResult&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,success,message);

@override
String toString() {
  return 'FavoriteResult(success: $success, message: $message)';
}


}

/// @nodoc
abstract mixin class $FavoriteResultCopyWith<$Res>  {
  factory $FavoriteResultCopyWith(FavoriteResult value, $Res Function(FavoriteResult) _then) = _$FavoriteResultCopyWithImpl;
@useResult
$Res call({
 bool success, String? message
});




}
/// @nodoc
class _$FavoriteResultCopyWithImpl<$Res>
    implements $FavoriteResultCopyWith<$Res> {
  _$FavoriteResultCopyWithImpl(this._self, this._then);

  final FavoriteResult _self;
  final $Res Function(FavoriteResult) _then;

/// Create a copy of FavoriteResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? message = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FavoriteResult].
extension FavoriteResultPatterns on FavoriteResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FavoriteResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FavoriteResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FavoriteResult value)  $default,){
final _that = this;
switch (_that) {
case _FavoriteResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FavoriteResult value)?  $default,){
final _that = this;
switch (_that) {
case _FavoriteResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FavoriteResult() when $default != null:
return $default(_that.success,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String? message)  $default,) {final _that = this;
switch (_that) {
case _FavoriteResult():
return $default(_that.success,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _FavoriteResult() when $default != null:
return $default(_that.success,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _FavoriteResult implements FavoriteResult {
  const _FavoriteResult({required this.success, this.message});
  

@override final  bool success;
@override final  String? message;

/// Create a copy of FavoriteResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FavoriteResultCopyWith<_FavoriteResult> get copyWith => __$FavoriteResultCopyWithImpl<_FavoriteResult>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavoriteResult&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,success,message);

@override
String toString() {
  return 'FavoriteResult(success: $success, message: $message)';
}


}

/// @nodoc
abstract mixin class _$FavoriteResultCopyWith<$Res> implements $FavoriteResultCopyWith<$Res> {
  factory _$FavoriteResultCopyWith(_FavoriteResult value, $Res Function(_FavoriteResult) _then) = __$FavoriteResultCopyWithImpl;
@override @useResult
$Res call({
 bool success, String? message
});




}
/// @nodoc
class __$FavoriteResultCopyWithImpl<$Res>
    implements _$FavoriteResultCopyWith<$Res> {
  __$FavoriteResultCopyWithImpl(this._self, this._then);

  final _FavoriteResult _self;
  final $Res Function(_FavoriteResult) _then;

/// Create a copy of FavoriteResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? message = freezed,}) {
  return _then(_FavoriteResult(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
