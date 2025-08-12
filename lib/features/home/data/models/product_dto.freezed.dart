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

 List<ProductDto> get data;@JsonKey(defaultValue: 0) int? get length;@JsonKey(name: 'total_pages', defaultValue: 0) int? get totalPages;@JsonKey(defaultValue: '') String? get message;
/// Create a copy of ProductPageDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductPageDtoCopyWith<ProductPageDto> get copyWith => _$ProductPageDtoCopyWithImpl<ProductPageDto>(this as ProductPageDto, _$identity);

  /// Serializes this ProductPageDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductPageDto&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.length, length) || other.length == length)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),length,totalPages,message);

@override
String toString() {
  return 'ProductPageDto(data: $data, length: $length, totalPages: $totalPages, message: $message)';
}


}

/// @nodoc
abstract mixin class $ProductPageDtoCopyWith<$Res>  {
  factory $ProductPageDtoCopyWith(ProductPageDto value, $Res Function(ProductPageDto) _then) = _$ProductPageDtoCopyWithImpl;
@useResult
$Res call({
 List<ProductDto> data,@JsonKey(defaultValue: 0) int? length,@JsonKey(name: 'total_pages', defaultValue: 0) int? totalPages,@JsonKey(defaultValue: '') String? message
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
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? length = freezed,Object? totalPages = freezed,Object? message = freezed,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ProductDto>,length: freezed == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ProductDto> data, @JsonKey(defaultValue: 0)  int? length, @JsonKey(name: 'total_pages', defaultValue: 0)  int? totalPages, @JsonKey(defaultValue: '')  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductPageDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ProductDto> data, @JsonKey(defaultValue: 0)  int? length, @JsonKey(name: 'total_pages', defaultValue: 0)  int? totalPages, @JsonKey(defaultValue: '')  String? message)  $default,) {final _that = this;
switch (_that) {
case _ProductPageDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ProductDto> data, @JsonKey(defaultValue: 0)  int? length, @JsonKey(name: 'total_pages', defaultValue: 0)  int? totalPages, @JsonKey(defaultValue: '')  String? message)?  $default,) {final _that = this;
switch (_that) {
case _ProductPageDto() when $default != null:
return $default(_that.data,_that.length,_that.totalPages,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductPageDto implements ProductPageDto {
  const _ProductPageDto({required final  List<ProductDto> data, @JsonKey(defaultValue: 0) this.length, @JsonKey(name: 'total_pages', defaultValue: 0) this.totalPages, @JsonKey(defaultValue: '') this.message}): _data = data;
  factory _ProductPageDto.fromJson(Map<String, dynamic> json) => _$ProductPageDtoFromJson(json);

 final  List<ProductDto> _data;
@override List<ProductDto> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override@JsonKey(defaultValue: 0) final  int? length;
@override@JsonKey(name: 'total_pages', defaultValue: 0) final  int? totalPages;
@override@JsonKey(defaultValue: '') final  String? message;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductPageDto&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.length, length) || other.length == length)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),length,totalPages,message);

@override
String toString() {
  return 'ProductPageDto(data: $data, length: $length, totalPages: $totalPages, message: $message)';
}


}

/// @nodoc
abstract mixin class _$ProductPageDtoCopyWith<$Res> implements $ProductPageDtoCopyWith<$Res> {
  factory _$ProductPageDtoCopyWith(_ProductPageDto value, $Res Function(_ProductPageDto) _then) = __$ProductPageDtoCopyWithImpl;
@override @useResult
$Res call({
 List<ProductDto> data,@JsonKey(defaultValue: 0) int? length,@JsonKey(name: 'total_pages', defaultValue: 0) int? totalPages,@JsonKey(defaultValue: '') String? message
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
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? length = freezed,Object? totalPages = freezed,Object? message = freezed,}) {
  return _then(_ProductPageDto(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ProductDto>,length: freezed == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ProductDto {

 int get id; String get name; num get price;@JsonKey(name: 'new_price') num get newPrice;@JsonKey(name: 'price_currency') String get priceCurrency;@JsonKey(name: 'template_id') TemplateRefDto get template;@JsonKey(name: 'quantity_per') String get quantityPer;@JsonKey(name: 'is_favorite') bool get isFavorite;@JsonKey(name: 'view_count') int get viewCount;@JsonKey(name: 'product_main_image') String get imageUrl;@JsonKey(name: 'review') ReviewSummaryDto get review;
/// Create a copy of ProductDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductDtoCopyWith<ProductDto> get copyWith => _$ProductDtoCopyWithImpl<ProductDto>(this as ProductDto, _$identity);

  /// Serializes this ProductDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price)&&(identical(other.newPrice, newPrice) || other.newPrice == newPrice)&&(identical(other.priceCurrency, priceCurrency) || other.priceCurrency == priceCurrency)&&(identical(other.template, template) || other.template == template)&&(identical(other.quantityPer, quantityPer) || other.quantityPer == quantityPer)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite)&&(identical(other.viewCount, viewCount) || other.viewCount == viewCount)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.review, review) || other.review == review));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,price,newPrice,priceCurrency,template,quantityPer,isFavorite,viewCount,imageUrl,review);

@override
String toString() {
  return 'ProductDto(id: $id, name: $name, price: $price, newPrice: $newPrice, priceCurrency: $priceCurrency, template: $template, quantityPer: $quantityPer, isFavorite: $isFavorite, viewCount: $viewCount, imageUrl: $imageUrl, review: $review)';
}


}

/// @nodoc
abstract mixin class $ProductDtoCopyWith<$Res>  {
  factory $ProductDtoCopyWith(ProductDto value, $Res Function(ProductDto) _then) = _$ProductDtoCopyWithImpl;
@useResult
$Res call({
 int id, String name, num price,@JsonKey(name: 'new_price') num newPrice,@JsonKey(name: 'price_currency') String priceCurrency,@JsonKey(name: 'template_id') TemplateRefDto template,@JsonKey(name: 'quantity_per') String quantityPer,@JsonKey(name: 'is_favorite') bool isFavorite,@JsonKey(name: 'view_count') int viewCount,@JsonKey(name: 'product_main_image') String imageUrl,@JsonKey(name: 'review') ReviewSummaryDto review
});


$TemplateRefDtoCopyWith<$Res> get template;$ReviewSummaryDtoCopyWith<$Res> get review;

}
/// @nodoc
class _$ProductDtoCopyWithImpl<$Res>
    implements $ProductDtoCopyWith<$Res> {
  _$ProductDtoCopyWithImpl(this._self, this._then);

  final ProductDto _self;
  final $Res Function(ProductDto) _then;

/// Create a copy of ProductDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? price = null,Object? newPrice = null,Object? priceCurrency = null,Object? template = null,Object? quantityPer = null,Object? isFavorite = null,Object? viewCount = null,Object? imageUrl = null,Object? review = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as num,newPrice: null == newPrice ? _self.newPrice : newPrice // ignore: cast_nullable_to_non_nullable
as num,priceCurrency: null == priceCurrency ? _self.priceCurrency : priceCurrency // ignore: cast_nullable_to_non_nullable
as String,template: null == template ? _self.template : template // ignore: cast_nullable_to_non_nullable
as TemplateRefDto,quantityPer: null == quantityPer ? _self.quantityPer : quantityPer // ignore: cast_nullable_to_non_nullable
as String,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,viewCount: null == viewCount ? _self.viewCount : viewCount // ignore: cast_nullable_to_non_nullable
as int,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,review: null == review ? _self.review : review // ignore: cast_nullable_to_non_nullable
as ReviewSummaryDto,
  ));
}
/// Create a copy of ProductDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TemplateRefDtoCopyWith<$Res> get template {
  
  return $TemplateRefDtoCopyWith<$Res>(_self.template, (value) {
    return _then(_self.copyWith(template: value));
  });
}/// Create a copy of ProductDto
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  num price, @JsonKey(name: 'new_price')  num newPrice, @JsonKey(name: 'price_currency')  String priceCurrency, @JsonKey(name: 'template_id')  TemplateRefDto template, @JsonKey(name: 'quantity_per')  String quantityPer, @JsonKey(name: 'is_favorite')  bool isFavorite, @JsonKey(name: 'view_count')  int viewCount, @JsonKey(name: 'product_main_image')  String imageUrl, @JsonKey(name: 'review')  ReviewSummaryDto review)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductDto() when $default != null:
return $default(_that.id,_that.name,_that.price,_that.newPrice,_that.priceCurrency,_that.template,_that.quantityPer,_that.isFavorite,_that.viewCount,_that.imageUrl,_that.review);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  num price, @JsonKey(name: 'new_price')  num newPrice, @JsonKey(name: 'price_currency')  String priceCurrency, @JsonKey(name: 'template_id')  TemplateRefDto template, @JsonKey(name: 'quantity_per')  String quantityPer, @JsonKey(name: 'is_favorite')  bool isFavorite, @JsonKey(name: 'view_count')  int viewCount, @JsonKey(name: 'product_main_image')  String imageUrl, @JsonKey(name: 'review')  ReviewSummaryDto review)  $default,) {final _that = this;
switch (_that) {
case _ProductDto():
return $default(_that.id,_that.name,_that.price,_that.newPrice,_that.priceCurrency,_that.template,_that.quantityPer,_that.isFavorite,_that.viewCount,_that.imageUrl,_that.review);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  num price, @JsonKey(name: 'new_price')  num newPrice, @JsonKey(name: 'price_currency')  String priceCurrency, @JsonKey(name: 'template_id')  TemplateRefDto template, @JsonKey(name: 'quantity_per')  String quantityPer, @JsonKey(name: 'is_favorite')  bool isFavorite, @JsonKey(name: 'view_count')  int viewCount, @JsonKey(name: 'product_main_image')  String imageUrl, @JsonKey(name: 'review')  ReviewSummaryDto review)?  $default,) {final _that = this;
switch (_that) {
case _ProductDto() when $default != null:
return $default(_that.id,_that.name,_that.price,_that.newPrice,_that.priceCurrency,_that.template,_that.quantityPer,_that.isFavorite,_that.viewCount,_that.imageUrl,_that.review);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductDto implements ProductDto {
  const _ProductDto({required this.id, required this.name, required this.price, @JsonKey(name: 'new_price') required this.newPrice, @JsonKey(name: 'price_currency') required this.priceCurrency, @JsonKey(name: 'template_id') required this.template, @JsonKey(name: 'quantity_per') required this.quantityPer, @JsonKey(name: 'is_favorite') required this.isFavorite, @JsonKey(name: 'view_count') required this.viewCount, @JsonKey(name: 'product_main_image') required this.imageUrl, @JsonKey(name: 'review') required this.review});
  factory _ProductDto.fromJson(Map<String, dynamic> json) => _$ProductDtoFromJson(json);

@override final  int id;
@override final  String name;
@override final  num price;
@override@JsonKey(name: 'new_price') final  num newPrice;
@override@JsonKey(name: 'price_currency') final  String priceCurrency;
@override@JsonKey(name: 'template_id') final  TemplateRefDto template;
@override@JsonKey(name: 'quantity_per') final  String quantityPer;
@override@JsonKey(name: 'is_favorite') final  bool isFavorite;
@override@JsonKey(name: 'view_count') final  int viewCount;
@override@JsonKey(name: 'product_main_image') final  String imageUrl;
@override@JsonKey(name: 'review') final  ReviewSummaryDto review;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price)&&(identical(other.newPrice, newPrice) || other.newPrice == newPrice)&&(identical(other.priceCurrency, priceCurrency) || other.priceCurrency == priceCurrency)&&(identical(other.template, template) || other.template == template)&&(identical(other.quantityPer, quantityPer) || other.quantityPer == quantityPer)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite)&&(identical(other.viewCount, viewCount) || other.viewCount == viewCount)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.review, review) || other.review == review));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,price,newPrice,priceCurrency,template,quantityPer,isFavorite,viewCount,imageUrl,review);

@override
String toString() {
  return 'ProductDto(id: $id, name: $name, price: $price, newPrice: $newPrice, priceCurrency: $priceCurrency, template: $template, quantityPer: $quantityPer, isFavorite: $isFavorite, viewCount: $viewCount, imageUrl: $imageUrl, review: $review)';
}


}

/// @nodoc
abstract mixin class _$ProductDtoCopyWith<$Res> implements $ProductDtoCopyWith<$Res> {
  factory _$ProductDtoCopyWith(_ProductDto value, $Res Function(_ProductDto) _then) = __$ProductDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, num price,@JsonKey(name: 'new_price') num newPrice,@JsonKey(name: 'price_currency') String priceCurrency,@JsonKey(name: 'template_id') TemplateRefDto template,@JsonKey(name: 'quantity_per') String quantityPer,@JsonKey(name: 'is_favorite') bool isFavorite,@JsonKey(name: 'view_count') int viewCount,@JsonKey(name: 'product_main_image') String imageUrl,@JsonKey(name: 'review') ReviewSummaryDto review
});


@override $TemplateRefDtoCopyWith<$Res> get template;@override $ReviewSummaryDtoCopyWith<$Res> get review;

}
/// @nodoc
class __$ProductDtoCopyWithImpl<$Res>
    implements _$ProductDtoCopyWith<$Res> {
  __$ProductDtoCopyWithImpl(this._self, this._then);

  final _ProductDto _self;
  final $Res Function(_ProductDto) _then;

/// Create a copy of ProductDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? price = null,Object? newPrice = null,Object? priceCurrency = null,Object? template = null,Object? quantityPer = null,Object? isFavorite = null,Object? viewCount = null,Object? imageUrl = null,Object? review = null,}) {
  return _then(_ProductDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as num,newPrice: null == newPrice ? _self.newPrice : newPrice // ignore: cast_nullable_to_non_nullable
as num,priceCurrency: null == priceCurrency ? _self.priceCurrency : priceCurrency // ignore: cast_nullable_to_non_nullable
as String,template: null == template ? _self.template : template // ignore: cast_nullable_to_non_nullable
as TemplateRefDto,quantityPer: null == quantityPer ? _self.quantityPer : quantityPer // ignore: cast_nullable_to_non_nullable
as String,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,viewCount: null == viewCount ? _self.viewCount : viewCount // ignore: cast_nullable_to_non_nullable
as int,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,review: null == review ? _self.review : review // ignore: cast_nullable_to_non_nullable
as ReviewSummaryDto,
  ));
}

/// Create a copy of ProductDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TemplateRefDtoCopyWith<$Res> get template {
  
  return $TemplateRefDtoCopyWith<$Res>(_self.template, (value) {
    return _then(_self.copyWith(template: value));
  });
}/// Create a copy of ProductDto
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
mixin _$TemplateRefDto {

 int get id; String get name;
/// Create a copy of TemplateRefDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TemplateRefDtoCopyWith<TemplateRefDto> get copyWith => _$TemplateRefDtoCopyWithImpl<TemplateRefDto>(this as TemplateRefDto, _$identity);

  /// Serializes this TemplateRefDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TemplateRefDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'TemplateRefDto(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $TemplateRefDtoCopyWith<$Res>  {
  factory $TemplateRefDtoCopyWith(TemplateRefDto value, $Res Function(TemplateRefDto) _then) = _$TemplateRefDtoCopyWithImpl;
@useResult
$Res call({
 int id, String name
});




}
/// @nodoc
class _$TemplateRefDtoCopyWithImpl<$Res>
    implements $TemplateRefDtoCopyWith<$Res> {
  _$TemplateRefDtoCopyWithImpl(this._self, this._then);

  final TemplateRefDto _self;
  final $Res Function(TemplateRefDto) _then;

/// Create a copy of TemplateRefDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TemplateRefDto].
extension TemplateRefDtoPatterns on TemplateRefDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TemplateRefDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TemplateRefDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TemplateRefDto value)  $default,){
final _that = this;
switch (_that) {
case _TemplateRefDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TemplateRefDto value)?  $default,){
final _that = this;
switch (_that) {
case _TemplateRefDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TemplateRefDto() when $default != null:
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name)  $default,) {final _that = this;
switch (_that) {
case _TemplateRefDto():
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name)?  $default,) {final _that = this;
switch (_that) {
case _TemplateRefDto() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TemplateRefDto implements TemplateRefDto {
  const _TemplateRefDto({required this.id, required this.name});
  factory _TemplateRefDto.fromJson(Map<String, dynamic> json) => _$TemplateRefDtoFromJson(json);

@override final  int id;
@override final  String name;

/// Create a copy of TemplateRefDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TemplateRefDtoCopyWith<_TemplateRefDto> get copyWith => __$TemplateRefDtoCopyWithImpl<_TemplateRefDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TemplateRefDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TemplateRefDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'TemplateRefDto(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$TemplateRefDtoCopyWith<$Res> implements $TemplateRefDtoCopyWith<$Res> {
  factory _$TemplateRefDtoCopyWith(_TemplateRefDto value, $Res Function(_TemplateRefDto) _then) = __$TemplateRefDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String name
});




}
/// @nodoc
class __$TemplateRefDtoCopyWithImpl<$Res>
    implements _$TemplateRefDtoCopyWith<$Res> {
  __$TemplateRefDtoCopyWithImpl(this._self, this._then);

  final _TemplateRefDto _self;
  final $Res Function(_TemplateRefDto) _then;

/// Create a copy of TemplateRefDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_TemplateRefDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ReviewSummaryDto {

 num get review;@JsonKey(name: 'review_ids') List<ReviewItemDto> get reviewIds;
/// Create a copy of ReviewSummaryDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewSummaryDtoCopyWith<ReviewSummaryDto> get copyWith => _$ReviewSummaryDtoCopyWithImpl<ReviewSummaryDto>(this as ReviewSummaryDto, _$identity);

  /// Serializes this ReviewSummaryDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewSummaryDto&&(identical(other.review, review) || other.review == review)&&const DeepCollectionEquality().equals(other.reviewIds, reviewIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,review,const DeepCollectionEquality().hash(reviewIds));

@override
String toString() {
  return 'ReviewSummaryDto(review: $review, reviewIds: $reviewIds)';
}


}

/// @nodoc
abstract mixin class $ReviewSummaryDtoCopyWith<$Res>  {
  factory $ReviewSummaryDtoCopyWith(ReviewSummaryDto value, $Res Function(ReviewSummaryDto) _then) = _$ReviewSummaryDtoCopyWithImpl;
@useResult
$Res call({
 num review,@JsonKey(name: 'review_ids') List<ReviewItemDto> reviewIds
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
@pragma('vm:prefer-inline') @override $Res call({Object? review = null,Object? reviewIds = null,}) {
  return _then(_self.copyWith(
review: null == review ? _self.review : review // ignore: cast_nullable_to_non_nullable
as num,reviewIds: null == reviewIds ? _self.reviewIds : reviewIds // ignore: cast_nullable_to_non_nullable
as List<ReviewItemDto>,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( num review, @JsonKey(name: 'review_ids')  List<ReviewItemDto> reviewIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewSummaryDto() when $default != null:
return $default(_that.review,_that.reviewIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( num review, @JsonKey(name: 'review_ids')  List<ReviewItemDto> reviewIds)  $default,) {final _that = this;
switch (_that) {
case _ReviewSummaryDto():
return $default(_that.review,_that.reviewIds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( num review, @JsonKey(name: 'review_ids')  List<ReviewItemDto> reviewIds)?  $default,) {final _that = this;
switch (_that) {
case _ReviewSummaryDto() when $default != null:
return $default(_that.review,_that.reviewIds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewSummaryDto implements ReviewSummaryDto {
  const _ReviewSummaryDto({this.review = 0, @JsonKey(name: 'review_ids') final  List<ReviewItemDto> reviewIds = const <ReviewItemDto>[]}): _reviewIds = reviewIds;
  factory _ReviewSummaryDto.fromJson(Map<String, dynamic> json) => _$ReviewSummaryDtoFromJson(json);

@override@JsonKey() final  num review;
 final  List<ReviewItemDto> _reviewIds;
@override@JsonKey(name: 'review_ids') List<ReviewItemDto> get reviewIds {
  if (_reviewIds is EqualUnmodifiableListView) return _reviewIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reviewIds);
}


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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewSummaryDto&&(identical(other.review, review) || other.review == review)&&const DeepCollectionEquality().equals(other._reviewIds, _reviewIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,review,const DeepCollectionEquality().hash(_reviewIds));

@override
String toString() {
  return 'ReviewSummaryDto(review: $review, reviewIds: $reviewIds)';
}


}

/// @nodoc
abstract mixin class _$ReviewSummaryDtoCopyWith<$Res> implements $ReviewSummaryDtoCopyWith<$Res> {
  factory _$ReviewSummaryDtoCopyWith(_ReviewSummaryDto value, $Res Function(_ReviewSummaryDto) _then) = __$ReviewSummaryDtoCopyWithImpl;
@override @useResult
$Res call({
 num review,@JsonKey(name: 'review_ids') List<ReviewItemDto> reviewIds
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
@override @pragma('vm:prefer-inline') $Res call({Object? review = null,Object? reviewIds = null,}) {
  return _then(_ReviewSummaryDto(
review: null == review ? _self.review : review // ignore: cast_nullable_to_non_nullable
as num,reviewIds: null == reviewIds ? _self._reviewIds : reviewIds // ignore: cast_nullable_to_non_nullable
as List<ReviewItemDto>,
  ));
}


}


/// @nodoc
mixin _$ReviewItemDto {

@JsonKey(name: 'review_id') int get reviewId;@JsonKey(name: 'review_text') String get reviewText; ReviewUserDto get user; String get date;@JsonKey(name: 'stars_count') num get starsCount;
/// Create a copy of ReviewItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewItemDtoCopyWith<ReviewItemDto> get copyWith => _$ReviewItemDtoCopyWithImpl<ReviewItemDto>(this as ReviewItemDto, _$identity);

  /// Serializes this ReviewItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewItemDto&&(identical(other.reviewId, reviewId) || other.reviewId == reviewId)&&(identical(other.reviewText, reviewText) || other.reviewText == reviewText)&&(identical(other.user, user) || other.user == user)&&(identical(other.date, date) || other.date == date)&&(identical(other.starsCount, starsCount) || other.starsCount == starsCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reviewId,reviewText,user,date,starsCount);

@override
String toString() {
  return 'ReviewItemDto(reviewId: $reviewId, reviewText: $reviewText, user: $user, date: $date, starsCount: $starsCount)';
}


}

/// @nodoc
abstract mixin class $ReviewItemDtoCopyWith<$Res>  {
  factory $ReviewItemDtoCopyWith(ReviewItemDto value, $Res Function(ReviewItemDto) _then) = _$ReviewItemDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'review_id') int reviewId,@JsonKey(name: 'review_text') String reviewText, ReviewUserDto user, String date,@JsonKey(name: 'stars_count') num starsCount
});


$ReviewUserDtoCopyWith<$Res> get user;

}
/// @nodoc
class _$ReviewItemDtoCopyWithImpl<$Res>
    implements $ReviewItemDtoCopyWith<$Res> {
  _$ReviewItemDtoCopyWithImpl(this._self, this._then);

  final ReviewItemDto _self;
  final $Res Function(ReviewItemDto) _then;

/// Create a copy of ReviewItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reviewId = null,Object? reviewText = null,Object? user = null,Object? date = null,Object? starsCount = null,}) {
  return _then(_self.copyWith(
reviewId: null == reviewId ? _self.reviewId : reviewId // ignore: cast_nullable_to_non_nullable
as int,reviewText: null == reviewText ? _self.reviewText : reviewText // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as ReviewUserDto,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,starsCount: null == starsCount ? _self.starsCount : starsCount // ignore: cast_nullable_to_non_nullable
as num,
  ));
}
/// Create a copy of ReviewItemDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewUserDtoCopyWith<$Res> get user {
  
  return $ReviewUserDtoCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReviewItemDto].
extension ReviewItemDtoPatterns on ReviewItemDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewItemDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewItemDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewItemDto value)  $default,){
final _that = this;
switch (_that) {
case _ReviewItemDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewItemDto value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewItemDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'review_id')  int reviewId, @JsonKey(name: 'review_text')  String reviewText,  ReviewUserDto user,  String date, @JsonKey(name: 'stars_count')  num starsCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewItemDto() when $default != null:
return $default(_that.reviewId,_that.reviewText,_that.user,_that.date,_that.starsCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'review_id')  int reviewId, @JsonKey(name: 'review_text')  String reviewText,  ReviewUserDto user,  String date, @JsonKey(name: 'stars_count')  num starsCount)  $default,) {final _that = this;
switch (_that) {
case _ReviewItemDto():
return $default(_that.reviewId,_that.reviewText,_that.user,_that.date,_that.starsCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'review_id')  int reviewId, @JsonKey(name: 'review_text')  String reviewText,  ReviewUserDto user,  String date, @JsonKey(name: 'stars_count')  num starsCount)?  $default,) {final _that = this;
switch (_that) {
case _ReviewItemDto() when $default != null:
return $default(_that.reviewId,_that.reviewText,_that.user,_that.date,_that.starsCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewItemDto implements ReviewItemDto {
  const _ReviewItemDto({@JsonKey(name: 'review_id') required this.reviewId, @JsonKey(name: 'review_text') required this.reviewText, required this.user, required this.date, @JsonKey(name: 'stars_count') required this.starsCount});
  factory _ReviewItemDto.fromJson(Map<String, dynamic> json) => _$ReviewItemDtoFromJson(json);

@override@JsonKey(name: 'review_id') final  int reviewId;
@override@JsonKey(name: 'review_text') final  String reviewText;
@override final  ReviewUserDto user;
@override final  String date;
@override@JsonKey(name: 'stars_count') final  num starsCount;

/// Create a copy of ReviewItemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewItemDtoCopyWith<_ReviewItemDto> get copyWith => __$ReviewItemDtoCopyWithImpl<_ReviewItemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewItemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewItemDto&&(identical(other.reviewId, reviewId) || other.reviewId == reviewId)&&(identical(other.reviewText, reviewText) || other.reviewText == reviewText)&&(identical(other.user, user) || other.user == user)&&(identical(other.date, date) || other.date == date)&&(identical(other.starsCount, starsCount) || other.starsCount == starsCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reviewId,reviewText,user,date,starsCount);

@override
String toString() {
  return 'ReviewItemDto(reviewId: $reviewId, reviewText: $reviewText, user: $user, date: $date, starsCount: $starsCount)';
}


}

/// @nodoc
abstract mixin class _$ReviewItemDtoCopyWith<$Res> implements $ReviewItemDtoCopyWith<$Res> {
  factory _$ReviewItemDtoCopyWith(_ReviewItemDto value, $Res Function(_ReviewItemDto) _then) = __$ReviewItemDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'review_id') int reviewId,@JsonKey(name: 'review_text') String reviewText, ReviewUserDto user, String date,@JsonKey(name: 'stars_count') num starsCount
});


@override $ReviewUserDtoCopyWith<$Res> get user;

}
/// @nodoc
class __$ReviewItemDtoCopyWithImpl<$Res>
    implements _$ReviewItemDtoCopyWith<$Res> {
  __$ReviewItemDtoCopyWithImpl(this._self, this._then);

  final _ReviewItemDto _self;
  final $Res Function(_ReviewItemDto) _then;

/// Create a copy of ReviewItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reviewId = null,Object? reviewText = null,Object? user = null,Object? date = null,Object? starsCount = null,}) {
  return _then(_ReviewItemDto(
reviewId: null == reviewId ? _self.reviewId : reviewId // ignore: cast_nullable_to_non_nullable
as int,reviewText: null == reviewText ? _self.reviewText : reviewText // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as ReviewUserDto,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,starsCount: null == starsCount ? _self.starsCount : starsCount // ignore: cast_nullable_to_non_nullable
as num,
  ));
}

/// Create a copy of ReviewItemDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewUserDtoCopyWith<$Res> get user {
  
  return $ReviewUserDtoCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// @nodoc
mixin _$ReviewUserDto {

 int get id; String get name;
/// Create a copy of ReviewUserDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewUserDtoCopyWith<ReviewUserDto> get copyWith => _$ReviewUserDtoCopyWithImpl<ReviewUserDto>(this as ReviewUserDto, _$identity);

  /// Serializes this ReviewUserDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewUserDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'ReviewUserDto(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $ReviewUserDtoCopyWith<$Res>  {
  factory $ReviewUserDtoCopyWith(ReviewUserDto value, $Res Function(ReviewUserDto) _then) = _$ReviewUserDtoCopyWithImpl;
@useResult
$Res call({
 int id, String name
});




}
/// @nodoc
class _$ReviewUserDtoCopyWithImpl<$Res>
    implements $ReviewUserDtoCopyWith<$Res> {
  _$ReviewUserDtoCopyWithImpl(this._self, this._then);

  final ReviewUserDto _self;
  final $Res Function(ReviewUserDto) _then;

/// Create a copy of ReviewUserDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewUserDto].
extension ReviewUserDtoPatterns on ReviewUserDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewUserDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewUserDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewUserDto value)  $default,){
final _that = this;
switch (_that) {
case _ReviewUserDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewUserDto value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewUserDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewUserDto() when $default != null:
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name)  $default,) {final _that = this;
switch (_that) {
case _ReviewUserDto():
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name)?  $default,) {final _that = this;
switch (_that) {
case _ReviewUserDto() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewUserDto implements ReviewUserDto {
  const _ReviewUserDto({required this.id, required this.name});
  factory _ReviewUserDto.fromJson(Map<String, dynamic> json) => _$ReviewUserDtoFromJson(json);

@override final  int id;
@override final  String name;

/// Create a copy of ReviewUserDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewUserDtoCopyWith<_ReviewUserDto> get copyWith => __$ReviewUserDtoCopyWithImpl<_ReviewUserDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewUserDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewUserDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'ReviewUserDto(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$ReviewUserDtoCopyWith<$Res> implements $ReviewUserDtoCopyWith<$Res> {
  factory _$ReviewUserDtoCopyWith(_ReviewUserDto value, $Res Function(_ReviewUserDto) _then) = __$ReviewUserDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String name
});




}
/// @nodoc
class __$ReviewUserDtoCopyWithImpl<$Res>
    implements _$ReviewUserDtoCopyWith<$Res> {
  __$ReviewUserDtoCopyWithImpl(this._self, this._then);

  final _ReviewUserDto _self;
  final $Res Function(_ReviewUserDto) _then;

/// Create a copy of ReviewUserDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_ReviewUserDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
