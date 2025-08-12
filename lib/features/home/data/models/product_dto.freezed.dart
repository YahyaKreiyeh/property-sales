// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductPageDto {

 List<ProductDto> get data; int get length;@JsonKey(name: 'total_pages') int get totalPages;
/// Create a copy of ProductPageDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductPageDtoCopyWith<ProductPageDto> get copyWith => _$ProductPageDtoCopyWithImpl<ProductPageDto>(this as ProductPageDto, _$identity);

  /// Serializes this ProductPageDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductPageDto&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.length, length) || other.length == length)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),length,totalPages);

@override
String toString() {
  return 'ProductPageDto(data: $data, length: $length, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class $ProductPageDtoCopyWith<$Res>  {
  factory $ProductPageDtoCopyWith(ProductPageDto value, $Res Function(ProductPageDto) _then) = _$ProductPageDtoCopyWithImpl;
@useResult
$Res call({
 List<ProductDto> data, int length,@JsonKey(name: 'total_pages') int totalPages
});




}
/// @nodoc
class _$ProductPageDtoCopyWithImpl<$Res>
    implements $ProductPageDtoCopyWith<$Res> {
  _$ProductPageDtoCopyWithImpl(this._self, this._then);

  final ProductPageDto _self;
  final $Res Function(ProductPageDto) _then;

/// Create a copy of ProductPageDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? length = null,Object? totalPages = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ProductDto>,length: null == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductPageDto].
extension ProductPageDtoPatterns on ProductPageDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductPageDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductPageDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductPageDto value)  $default,){
final _that = this;
switch (_that) {
case _ProductPageDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductPageDto value)?  $default,){
final _that = this;
switch (_that) {
case _ProductPageDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ProductDto> data,  int length, @JsonKey(name: 'total_pages')  int totalPages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductPageDto() when $default != null:
return $default(_that.data,_that.length,_that.totalPages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ProductDto> data,  int length, @JsonKey(name: 'total_pages')  int totalPages)  $default,) {final _that = this;
switch (_that) {
case _ProductPageDto():
return $default(_that.data,_that.length,_that.totalPages);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ProductDto> data,  int length, @JsonKey(name: 'total_pages')  int totalPages)?  $default,) {final _that = this;
switch (_that) {
case _ProductPageDto() when $default != null:
return $default(_that.data,_that.length,_that.totalPages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductPageDto implements ProductPageDto {
  const _ProductPageDto({required final  List<ProductDto> data, required this.length, @JsonKey(name: 'total_pages') required this.totalPages}): _data = data;
  factory _ProductPageDto.fromJson(Map<String, dynamic> json) => _$ProductPageDtoFromJson(json);

 final  List<ProductDto> _data;
@override List<ProductDto> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  int length;
@override@JsonKey(name: 'total_pages') final  int totalPages;

/// Create a copy of ProductPageDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductPageDtoCopyWith<_ProductPageDto> get copyWith => __$ProductPageDtoCopyWithImpl<_ProductPageDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductPageDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductPageDto&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.length, length) || other.length == length)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),length,totalPages);

@override
String toString() {
  return 'ProductPageDto(data: $data, length: $length, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class _$ProductPageDtoCopyWith<$Res> implements $ProductPageDtoCopyWith<$Res> {
  factory _$ProductPageDtoCopyWith(_ProductPageDto value, $Res Function(_ProductPageDto) _then) = __$ProductPageDtoCopyWithImpl;
@override @useResult
$Res call({
 List<ProductDto> data, int length,@JsonKey(name: 'total_pages') int totalPages
});




}
/// @nodoc
class __$ProductPageDtoCopyWithImpl<$Res>
    implements _$ProductPageDtoCopyWith<$Res> {
  __$ProductPageDtoCopyWithImpl(this._self, this._then);

  final _ProductPageDto _self;
  final $Res Function(_ProductPageDto) _then;

/// Create a copy of ProductPageDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? length = null,Object? totalPages = null,}) {
  return _then(_ProductPageDto(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ProductDto>,length: null == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$ProductDto {

 int get id; String get name; num get price;@JsonKey(name: 'new_price') num get newPrice;@JsonKey(name: 'price_currency') String get priceCurrency;@JsonKey(name: 'product_main_image') String get imageUrl; ReviewSummaryDto get review;
/// Create a copy of ProductDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductDtoCopyWith<ProductDto> get copyWith => _$ProductDtoCopyWithImpl<ProductDto>(this as ProductDto, _$identity);

  /// Serializes this ProductDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price)&&(identical(other.newPrice, newPrice) || other.newPrice == newPrice)&&(identical(other.priceCurrency, priceCurrency) || other.priceCurrency == priceCurrency)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.review, review) || other.review == review));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,price,newPrice,priceCurrency,imageUrl,review);

@override
String toString() {
  return 'ProductDto(id: $id, name: $name, price: $price, newPrice: $newPrice, priceCurrency: $priceCurrency, imageUrl: $imageUrl, review: $review)';
}


}

/// @nodoc
abstract mixin class $ProductDtoCopyWith<$Res>  {
  factory $ProductDtoCopyWith(ProductDto value, $Res Function(ProductDto) _then) = _$ProductDtoCopyWithImpl;
@useResult
$Res call({
 int id, String name, num price,@JsonKey(name: 'new_price') num newPrice,@JsonKey(name: 'price_currency') String priceCurrency,@JsonKey(name: 'product_main_image') String imageUrl, ReviewSummaryDto review
});


$ReviewSummaryDtoCopyWith<$Res> get review;

}
/// @nodoc
class _$ProductDtoCopyWithImpl<$Res>
    implements $ProductDtoCopyWith<$Res> {
  _$ProductDtoCopyWithImpl(this._self, this._then);

  final ProductDto _self;
  final $Res Function(ProductDto) _then;

/// Create a copy of ProductDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? price = null,Object? newPrice = null,Object? priceCurrency = null,Object? imageUrl = null,Object? review = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as num,newPrice: null == newPrice ? _self.newPrice : newPrice // ignore: cast_nullable_to_non_nullable
as num,priceCurrency: null == priceCurrency ? _self.priceCurrency : priceCurrency // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,review: null == review ? _self.review : review // ignore: cast_nullable_to_non_nullable
as ReviewSummaryDto,
  ));
}
/// Create a copy of ProductDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewSummaryDtoCopyWith<$Res> get review {
  
  return $ReviewSummaryDtoCopyWith<$Res>(_self.review, (value) {
    return _then(_self.copyWith(review: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductDto].
extension ProductDtoPatterns on ProductDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductDto value)  $default,){
final _that = this;
switch (_that) {
case _ProductDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductDto value)?  $default,){
final _that = this;
switch (_that) {
case _ProductDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  num price, @JsonKey(name: 'new_price')  num newPrice, @JsonKey(name: 'price_currency')  String priceCurrency, @JsonKey(name: 'product_main_image')  String imageUrl,  ReviewSummaryDto review)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductDto() when $default != null:
return $default(_that.id,_that.name,_that.price,_that.newPrice,_that.priceCurrency,_that.imageUrl,_that.review);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  num price, @JsonKey(name: 'new_price')  num newPrice, @JsonKey(name: 'price_currency')  String priceCurrency, @JsonKey(name: 'product_main_image')  String imageUrl,  ReviewSummaryDto review)  $default,) {final _that = this;
switch (_that) {
case _ProductDto():
return $default(_that.id,_that.name,_that.price,_that.newPrice,_that.priceCurrency,_that.imageUrl,_that.review);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  num price, @JsonKey(name: 'new_price')  num newPrice, @JsonKey(name: 'price_currency')  String priceCurrency, @JsonKey(name: 'product_main_image')  String imageUrl,  ReviewSummaryDto review)?  $default,) {final _that = this;
switch (_that) {
case _ProductDto() when $default != null:
return $default(_that.id,_that.name,_that.price,_that.newPrice,_that.priceCurrency,_that.imageUrl,_that.review);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductDto implements ProductDto {
  const _ProductDto({required this.id, required this.name, required this.price, @JsonKey(name: 'new_price') required this.newPrice, @JsonKey(name: 'price_currency') required this.priceCurrency, @JsonKey(name: 'product_main_image') required this.imageUrl, required this.review});
  factory _ProductDto.fromJson(Map<String, dynamic> json) => _$ProductDtoFromJson(json);

@override final  int id;
@override final  String name;
@override final  num price;
@override@JsonKey(name: 'new_price') final  num newPrice;
@override@JsonKey(name: 'price_currency') final  String priceCurrency;
@override@JsonKey(name: 'product_main_image') final  String imageUrl;
@override final  ReviewSummaryDto review;

/// Create a copy of ProductDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductDtoCopyWith<_ProductDto> get copyWith => __$ProductDtoCopyWithImpl<_ProductDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price)&&(identical(other.newPrice, newPrice) || other.newPrice == newPrice)&&(identical(other.priceCurrency, priceCurrency) || other.priceCurrency == priceCurrency)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.review, review) || other.review == review));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,price,newPrice,priceCurrency,imageUrl,review);

@override
String toString() {
  return 'ProductDto(id: $id, name: $name, price: $price, newPrice: $newPrice, priceCurrency: $priceCurrency, imageUrl: $imageUrl, review: $review)';
}


}

/// @nodoc
abstract mixin class _$ProductDtoCopyWith<$Res> implements $ProductDtoCopyWith<$Res> {
  factory _$ProductDtoCopyWith(_ProductDto value, $Res Function(_ProductDto) _then) = __$ProductDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, num price,@JsonKey(name: 'new_price') num newPrice,@JsonKey(name: 'price_currency') String priceCurrency,@JsonKey(name: 'product_main_image') String imageUrl, ReviewSummaryDto review
});


@override $ReviewSummaryDtoCopyWith<$Res> get review;

}
/// @nodoc
class __$ProductDtoCopyWithImpl<$Res>
    implements _$ProductDtoCopyWith<$Res> {
  __$ProductDtoCopyWithImpl(this._self, this._then);

  final _ProductDto _self;
  final $Res Function(_ProductDto) _then;

/// Create a copy of ProductDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? price = null,Object? newPrice = null,Object? priceCurrency = null,Object? imageUrl = null,Object? review = null,}) {
  return _then(_ProductDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as num,newPrice: null == newPrice ? _self.newPrice : newPrice // ignore: cast_nullable_to_non_nullable
as num,priceCurrency: null == priceCurrency ? _self.priceCurrency : priceCurrency // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,review: null == review ? _self.review : review // ignore: cast_nullable_to_non_nullable
as ReviewSummaryDto,
  ));
}

/// Create a copy of ProductDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewSummaryDtoCopyWith<$Res> get review {
  
  return $ReviewSummaryDtoCopyWith<$Res>(_self.review, (value) {
    return _then(_self.copyWith(review: value));
  });
}
}


/// @nodoc
mixin _$ReviewSummaryDto {

 num get review;
/// Create a copy of ReviewSummaryDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewSummaryDtoCopyWith<ReviewSummaryDto> get copyWith => _$ReviewSummaryDtoCopyWithImpl<ReviewSummaryDto>(this as ReviewSummaryDto, _$identity);

  /// Serializes this ReviewSummaryDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewSummaryDto&&(identical(other.review, review) || other.review == review));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,review);

@override
String toString() {
  return 'ReviewSummaryDto(review: $review)';
}


}

/// @nodoc
abstract mixin class $ReviewSummaryDtoCopyWith<$Res>  {
  factory $ReviewSummaryDtoCopyWith(ReviewSummaryDto value, $Res Function(ReviewSummaryDto) _then) = _$ReviewSummaryDtoCopyWithImpl;
@useResult
$Res call({
 num review
});




}
/// @nodoc
class _$ReviewSummaryDtoCopyWithImpl<$Res>
    implements $ReviewSummaryDtoCopyWith<$Res> {
  _$ReviewSummaryDtoCopyWithImpl(this._self, this._then);

  final ReviewSummaryDto _self;
  final $Res Function(ReviewSummaryDto) _then;

/// Create a copy of ReviewSummaryDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? review = null,}) {
  return _then(_self.copyWith(
review: null == review ? _self.review : review // ignore: cast_nullable_to_non_nullable
as num,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewSummaryDto].
extension ReviewSummaryDtoPatterns on ReviewSummaryDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewSummaryDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewSummaryDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewSummaryDto value)  $default,){
final _that = this;
switch (_that) {
case _ReviewSummaryDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewSummaryDto value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewSummaryDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( num review)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewSummaryDto() when $default != null:
return $default(_that.review);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( num review)  $default,) {final _that = this;
switch (_that) {
case _ReviewSummaryDto():
return $default(_that.review);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( num review)?  $default,) {final _that = this;
switch (_that) {
case _ReviewSummaryDto() when $default != null:
return $default(_that.review);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewSummaryDto implements ReviewSummaryDto {
  const _ReviewSummaryDto({this.review = 0});
  factory _ReviewSummaryDto.fromJson(Map<String, dynamic> json) => _$ReviewSummaryDtoFromJson(json);

@override@JsonKey() final  num review;

/// Create a copy of ReviewSummaryDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewSummaryDtoCopyWith<_ReviewSummaryDto> get copyWith => __$ReviewSummaryDtoCopyWithImpl<_ReviewSummaryDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewSummaryDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewSummaryDto&&(identical(other.review, review) || other.review == review));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,review);

@override
String toString() {
  return 'ReviewSummaryDto(review: $review)';
}


}

/// @nodoc
abstract mixin class _$ReviewSummaryDtoCopyWith<$Res> implements $ReviewSummaryDtoCopyWith<$Res> {
  factory _$ReviewSummaryDtoCopyWith(_ReviewSummaryDto value, $Res Function(_ReviewSummaryDto) _then) = __$ReviewSummaryDtoCopyWithImpl;
@override @useResult
$Res call({
 num review
});




}
/// @nodoc
class __$ReviewSummaryDtoCopyWithImpl<$Res>
    implements _$ReviewSummaryDtoCopyWith<$Res> {
  __$ReviewSummaryDtoCopyWithImpl(this._self, this._then);

  final _ReviewSummaryDto _self;
  final $Res Function(_ReviewSummaryDto) _then;

/// Create a copy of ReviewSummaryDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? review = null,}) {
  return _then(_ReviewSummaryDto(
review: null == review ? _self.review : review // ignore: cast_nullable_to_non_nullable
as num,
  ));
}


}

// dart format on
