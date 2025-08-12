// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CategoryEntity {

 int get id; String get name; String? get smallImageUrl;
/// Create a copy of CategoryEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryEntityCopyWith<CategoryEntity> get copyWith => _$CategoryEntityCopyWithImpl<CategoryEntity>(this as CategoryEntity, _$identity);

  /// Serializes this CategoryEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.smallImageUrl, smallImageUrl) || other.smallImageUrl == smallImageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,smallImageUrl);

@override
String toString() {
  return 'CategoryEntity(id: $id, name: $name, smallImageUrl: $smallImageUrl)';
}


}

/// @nodoc
abstract mixin class $CategoryEntityCopyWith<$Res>  {
  factory $CategoryEntityCopyWith(CategoryEntity value, $Res Function(CategoryEntity) _then) = _$CategoryEntityCopyWithImpl;
@useResult
$Res call({
 int id, String name, String? smallImageUrl
});




}
/// @nodoc
class _$CategoryEntityCopyWithImpl<$Res>
    implements $CategoryEntityCopyWith<$Res> {
  _$CategoryEntityCopyWithImpl(this._self, this._then);

  final CategoryEntity _self;
  final $Res Function(CategoryEntity) _then;

/// Create a copy of CategoryEntity
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


/// Adds pattern-matching-related methods to [CategoryEntity].
extension CategoryEntityPatterns on CategoryEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryEntity value)  $default,){
final _that = this;
switch (_that) {
case _CategoryEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String? smallImageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String? smallImageUrl)  $default,) {final _that = this;
switch (_that) {
case _CategoryEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String? smallImageUrl)?  $default,) {final _that = this;
switch (_that) {
case _CategoryEntity() when $default != null:
return $default(_that.id,_that.name,_that.smallImageUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryEntity implements CategoryEntity {
  const _CategoryEntity({required this.id, required this.name, this.smallImageUrl});
  factory _CategoryEntity.fromJson(Map<String, dynamic> json) => _$CategoryEntityFromJson(json);

@override final  int id;
@override final  String name;
@override final  String? smallImageUrl;

/// Create a copy of CategoryEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryEntityCopyWith<_CategoryEntity> get copyWith => __$CategoryEntityCopyWithImpl<_CategoryEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.smallImageUrl, smallImageUrl) || other.smallImageUrl == smallImageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,smallImageUrl);

@override
String toString() {
  return 'CategoryEntity(id: $id, name: $name, smallImageUrl: $smallImageUrl)';
}


}

/// @nodoc
abstract mixin class _$CategoryEntityCopyWith<$Res> implements $CategoryEntityCopyWith<$Res> {
  factory _$CategoryEntityCopyWith(_CategoryEntity value, $Res Function(_CategoryEntity) _then) = __$CategoryEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String? smallImageUrl
});




}
/// @nodoc
class __$CategoryEntityCopyWithImpl<$Res>
    implements _$CategoryEntityCopyWith<$Res> {
  __$CategoryEntityCopyWithImpl(this._self, this._then);

  final _CategoryEntity _self;
  final $Res Function(_CategoryEntity) _then;

/// Create a copy of CategoryEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? smallImageUrl = freezed,}) {
  return _then(_CategoryEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,smallImageUrl: freezed == smallImageUrl ? _self.smallImageUrl : smallImageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CategoryPage {

 List<CategoryEntity> get data; int get length;@JsonKey(name: 'total_pages') int get totalPages;@JsonKey(name: 'message') String? get message;
/// Create a copy of CategoryPage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryPageCopyWith<CategoryPage> get copyWith => _$CategoryPageCopyWithImpl<CategoryPage>(this as CategoryPage, _$identity);

  /// Serializes this CategoryPage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryPage&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.length, length) || other.length == length)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),length,totalPages,message);

@override
String toString() {
  return 'CategoryPage(data: $data, length: $length, totalPages: $totalPages, message: $message)';
}


}

/// @nodoc
abstract mixin class $CategoryPageCopyWith<$Res>  {
  factory $CategoryPageCopyWith(CategoryPage value, $Res Function(CategoryPage) _then) = _$CategoryPageCopyWithImpl;
@useResult
$Res call({
 List<CategoryEntity> data, int length,@JsonKey(name: 'total_pages') int totalPages,@JsonKey(name: 'message') String? message
});




}
/// @nodoc
class _$CategoryPageCopyWithImpl<$Res>
    implements $CategoryPageCopyWith<$Res> {
  _$CategoryPageCopyWithImpl(this._self, this._then);

  final CategoryPage _self;
  final $Res Function(CategoryPage) _then;

/// Create a copy of CategoryPage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? length = null,Object? totalPages = null,Object? message = freezed,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<CategoryEntity>,length: null == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryPage].
extension CategoryPagePatterns on CategoryPage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryPage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryPage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryPage value)  $default,){
final _that = this;
switch (_that) {
case _CategoryPage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryPage value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryPage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CategoryEntity> data,  int length, @JsonKey(name: 'total_pages')  int totalPages, @JsonKey(name: 'message')  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryPage() when $default != null:
return $default(_that.data,_that.length,_that.totalPages,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CategoryEntity> data,  int length, @JsonKey(name: 'total_pages')  int totalPages, @JsonKey(name: 'message')  String? message)  $default,) {final _that = this;
switch (_that) {
case _CategoryPage():
return $default(_that.data,_that.length,_that.totalPages,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CategoryEntity> data,  int length, @JsonKey(name: 'total_pages')  int totalPages, @JsonKey(name: 'message')  String? message)?  $default,) {final _that = this;
switch (_that) {
case _CategoryPage() when $default != null:
return $default(_that.data,_that.length,_that.totalPages,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryPage implements CategoryPage {
  const _CategoryPage({required final  List<CategoryEntity> data, this.length = 0, @JsonKey(name: 'total_pages') this.totalPages = 0, @JsonKey(name: 'message') this.message}): _data = data;
  factory _CategoryPage.fromJson(Map<String, dynamic> json) => _$CategoryPageFromJson(json);

 final  List<CategoryEntity> _data;
@override List<CategoryEntity> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override@JsonKey() final  int length;
@override@JsonKey(name: 'total_pages') final  int totalPages;
@override@JsonKey(name: 'message') final  String? message;

/// Create a copy of CategoryPage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryPageCopyWith<_CategoryPage> get copyWith => __$CategoryPageCopyWithImpl<_CategoryPage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryPageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryPage&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.length, length) || other.length == length)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),length,totalPages,message);

@override
String toString() {
  return 'CategoryPage(data: $data, length: $length, totalPages: $totalPages, message: $message)';
}


}

/// @nodoc
abstract mixin class _$CategoryPageCopyWith<$Res> implements $CategoryPageCopyWith<$Res> {
  factory _$CategoryPageCopyWith(_CategoryPage value, $Res Function(_CategoryPage) _then) = __$CategoryPageCopyWithImpl;
@override @useResult
$Res call({
 List<CategoryEntity> data, int length,@JsonKey(name: 'total_pages') int totalPages,@JsonKey(name: 'message') String? message
});




}
/// @nodoc
class __$CategoryPageCopyWithImpl<$Res>
    implements _$CategoryPageCopyWith<$Res> {
  __$CategoryPageCopyWithImpl(this._self, this._then);

  final _CategoryPage _self;
  final $Res Function(_CategoryPage) _then;

/// Create a copy of CategoryPage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? length = null,Object? totalPages = null,Object? message = freezed,}) {
  return _then(_CategoryPage(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<CategoryEntity>,length: null == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
