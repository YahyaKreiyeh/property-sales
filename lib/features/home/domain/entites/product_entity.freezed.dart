// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductEntity {

 int get id; String get name; double get price;@JsonKey(name: 'new_price') double get newPrice;@JsonKey(name: 'price_currency') String get priceCurrency;@JsonKey(name: 'template_id') TemplateRef get template;@JsonKey(name: 'quantity_per') String get quantityPer;@JsonKey(name: 'is_favorite') bool get isFavorite;@JsonKey(name: 'view_count') int get viewCount;@JsonKey(name: 'product_main_image') String get imageUrl;@JsonKey(name: 'review') ReviewSummary get review;
/// Create a copy of ProductEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductEntityCopyWith<ProductEntity> get copyWith => _$ProductEntityCopyWithImpl<ProductEntity>(this as ProductEntity, _$identity);

  /// Serializes this ProductEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price)&&(identical(other.newPrice, newPrice) || other.newPrice == newPrice)&&(identical(other.priceCurrency, priceCurrency) || other.priceCurrency == priceCurrency)&&(identical(other.template, template) || other.template == template)&&(identical(other.quantityPer, quantityPer) || other.quantityPer == quantityPer)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite)&&(identical(other.viewCount, viewCount) || other.viewCount == viewCount)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.review, review) || other.review == review));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,price,newPrice,priceCurrency,template,quantityPer,isFavorite,viewCount,imageUrl,review);

@override
String toString() {
  return 'ProductEntity(id: $id, name: $name, price: $price, newPrice: $newPrice, priceCurrency: $priceCurrency, template: $template, quantityPer: $quantityPer, isFavorite: $isFavorite, viewCount: $viewCount, imageUrl: $imageUrl, review: $review)';
}


}

/// @nodoc
abstract mixin class $ProductEntityCopyWith<$Res>  {
  factory $ProductEntityCopyWith(ProductEntity value, $Res Function(ProductEntity) _then) = _$ProductEntityCopyWithImpl;
@useResult
$Res call({
 int id, String name, double price,@JsonKey(name: 'new_price') double newPrice,@JsonKey(name: 'price_currency') String priceCurrency,@JsonKey(name: 'template_id') TemplateRef template,@JsonKey(name: 'quantity_per') String quantityPer,@JsonKey(name: 'is_favorite') bool isFavorite,@JsonKey(name: 'view_count') int viewCount,@JsonKey(name: 'product_main_image') String imageUrl,@JsonKey(name: 'review') ReviewSummary review
});


$TemplateRefCopyWith<$Res> get template;$ReviewSummaryCopyWith<$Res> get review;

}
/// @nodoc
class _$ProductEntityCopyWithImpl<$Res>
    implements $ProductEntityCopyWith<$Res> {
  _$ProductEntityCopyWithImpl(this._self, this._then);

  final ProductEntity _self;
  final $Res Function(ProductEntity) _then;

/// Create a copy of ProductEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? price = null,Object? newPrice = null,Object? priceCurrency = null,Object? template = null,Object? quantityPer = null,Object? isFavorite = null,Object? viewCount = null,Object? imageUrl = null,Object? review = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,newPrice: null == newPrice ? _self.newPrice : newPrice // ignore: cast_nullable_to_non_nullable
as double,priceCurrency: null == priceCurrency ? _self.priceCurrency : priceCurrency // ignore: cast_nullable_to_non_nullable
as String,template: null == template ? _self.template : template // ignore: cast_nullable_to_non_nullable
as TemplateRef,quantityPer: null == quantityPer ? _self.quantityPer : quantityPer // ignore: cast_nullable_to_non_nullable
as String,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,viewCount: null == viewCount ? _self.viewCount : viewCount // ignore: cast_nullable_to_non_nullable
as int,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,review: null == review ? _self.review : review // ignore: cast_nullable_to_non_nullable
as ReviewSummary,
  ));
}
/// Create a copy of ProductEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TemplateRefCopyWith<$Res> get template {
  
  return $TemplateRefCopyWith<$Res>(_self.template, (value) {
    return _then(_self.copyWith(template: value));
  });
}/// Create a copy of ProductEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewSummaryCopyWith<$Res> get review {
  
  return $ReviewSummaryCopyWith<$Res>(_self.review, (value) {
    return _then(_self.copyWith(review: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductEntity].
extension ProductEntityPatterns on ProductEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductEntity value)  $default,){
final _that = this;
switch (_that) {
case _ProductEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ProductEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  double price, @JsonKey(name: 'new_price')  double newPrice, @JsonKey(name: 'price_currency')  String priceCurrency, @JsonKey(name: 'template_id')  TemplateRef template, @JsonKey(name: 'quantity_per')  String quantityPer, @JsonKey(name: 'is_favorite')  bool isFavorite, @JsonKey(name: 'view_count')  int viewCount, @JsonKey(name: 'product_main_image')  String imageUrl, @JsonKey(name: 'review')  ReviewSummary review)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  double price, @JsonKey(name: 'new_price')  double newPrice, @JsonKey(name: 'price_currency')  String priceCurrency, @JsonKey(name: 'template_id')  TemplateRef template, @JsonKey(name: 'quantity_per')  String quantityPer, @JsonKey(name: 'is_favorite')  bool isFavorite, @JsonKey(name: 'view_count')  int viewCount, @JsonKey(name: 'product_main_image')  String imageUrl, @JsonKey(name: 'review')  ReviewSummary review)  $default,) {final _that = this;
switch (_that) {
case _ProductEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  double price, @JsonKey(name: 'new_price')  double newPrice, @JsonKey(name: 'price_currency')  String priceCurrency, @JsonKey(name: 'template_id')  TemplateRef template, @JsonKey(name: 'quantity_per')  String quantityPer, @JsonKey(name: 'is_favorite')  bool isFavorite, @JsonKey(name: 'view_count')  int viewCount, @JsonKey(name: 'product_main_image')  String imageUrl, @JsonKey(name: 'review')  ReviewSummary review)?  $default,) {final _that = this;
switch (_that) {
case _ProductEntity() when $default != null:
return $default(_that.id,_that.name,_that.price,_that.newPrice,_that.priceCurrency,_that.template,_that.quantityPer,_that.isFavorite,_that.viewCount,_that.imageUrl,_that.review);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductEntity implements ProductEntity {
  const _ProductEntity({required this.id, required this.name, required this.price, @JsonKey(name: 'new_price') required this.newPrice, @JsonKey(name: 'price_currency') required this.priceCurrency, @JsonKey(name: 'template_id') required this.template, @JsonKey(name: 'quantity_per') required this.quantityPer, @JsonKey(name: 'is_favorite') required this.isFavorite, @JsonKey(name: 'view_count') required this.viewCount, @JsonKey(name: 'product_main_image') required this.imageUrl, @JsonKey(name: 'review') required this.review});
  factory _ProductEntity.fromJson(Map<String, dynamic> json) => _$ProductEntityFromJson(json);

@override final  int id;
@override final  String name;
@override final  double price;
@override@JsonKey(name: 'new_price') final  double newPrice;
@override@JsonKey(name: 'price_currency') final  String priceCurrency;
@override@JsonKey(name: 'template_id') final  TemplateRef template;
@override@JsonKey(name: 'quantity_per') final  String quantityPer;
@override@JsonKey(name: 'is_favorite') final  bool isFavorite;
@override@JsonKey(name: 'view_count') final  int viewCount;
@override@JsonKey(name: 'product_main_image') final  String imageUrl;
@override@JsonKey(name: 'review') final  ReviewSummary review;

/// Create a copy of ProductEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductEntityCopyWith<_ProductEntity> get copyWith => __$ProductEntityCopyWithImpl<_ProductEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price)&&(identical(other.newPrice, newPrice) || other.newPrice == newPrice)&&(identical(other.priceCurrency, priceCurrency) || other.priceCurrency == priceCurrency)&&(identical(other.template, template) || other.template == template)&&(identical(other.quantityPer, quantityPer) || other.quantityPer == quantityPer)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite)&&(identical(other.viewCount, viewCount) || other.viewCount == viewCount)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.review, review) || other.review == review));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,price,newPrice,priceCurrency,template,quantityPer,isFavorite,viewCount,imageUrl,review);

@override
String toString() {
  return 'ProductEntity(id: $id, name: $name, price: $price, newPrice: $newPrice, priceCurrency: $priceCurrency, template: $template, quantityPer: $quantityPer, isFavorite: $isFavorite, viewCount: $viewCount, imageUrl: $imageUrl, review: $review)';
}


}

/// @nodoc
abstract mixin class _$ProductEntityCopyWith<$Res> implements $ProductEntityCopyWith<$Res> {
  factory _$ProductEntityCopyWith(_ProductEntity value, $Res Function(_ProductEntity) _then) = __$ProductEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, double price,@JsonKey(name: 'new_price') double newPrice,@JsonKey(name: 'price_currency') String priceCurrency,@JsonKey(name: 'template_id') TemplateRef template,@JsonKey(name: 'quantity_per') String quantityPer,@JsonKey(name: 'is_favorite') bool isFavorite,@JsonKey(name: 'view_count') int viewCount,@JsonKey(name: 'product_main_image') String imageUrl,@JsonKey(name: 'review') ReviewSummary review
});


@override $TemplateRefCopyWith<$Res> get template;@override $ReviewSummaryCopyWith<$Res> get review;

}
/// @nodoc
class __$ProductEntityCopyWithImpl<$Res>
    implements _$ProductEntityCopyWith<$Res> {
  __$ProductEntityCopyWithImpl(this._self, this._then);

  final _ProductEntity _self;
  final $Res Function(_ProductEntity) _then;

/// Create a copy of ProductEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? price = null,Object? newPrice = null,Object? priceCurrency = null,Object? template = null,Object? quantityPer = null,Object? isFavorite = null,Object? viewCount = null,Object? imageUrl = null,Object? review = null,}) {
  return _then(_ProductEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,newPrice: null == newPrice ? _self.newPrice : newPrice // ignore: cast_nullable_to_non_nullable
as double,priceCurrency: null == priceCurrency ? _self.priceCurrency : priceCurrency // ignore: cast_nullable_to_non_nullable
as String,template: null == template ? _self.template : template // ignore: cast_nullable_to_non_nullable
as TemplateRef,quantityPer: null == quantityPer ? _self.quantityPer : quantityPer // ignore: cast_nullable_to_non_nullable
as String,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,viewCount: null == viewCount ? _self.viewCount : viewCount // ignore: cast_nullable_to_non_nullable
as int,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,review: null == review ? _self.review : review // ignore: cast_nullable_to_non_nullable
as ReviewSummary,
  ));
}

/// Create a copy of ProductEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TemplateRefCopyWith<$Res> get template {
  
  return $TemplateRefCopyWith<$Res>(_self.template, (value) {
    return _then(_self.copyWith(template: value));
  });
}/// Create a copy of ProductEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewSummaryCopyWith<$Res> get review {
  
  return $ReviewSummaryCopyWith<$Res>(_self.review, (value) {
    return _then(_self.copyWith(review: value));
  });
}
}


/// @nodoc
mixin _$TemplateRef {

 int get id; String get name;
/// Create a copy of TemplateRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TemplateRefCopyWith<TemplateRef> get copyWith => _$TemplateRefCopyWithImpl<TemplateRef>(this as TemplateRef, _$identity);

  /// Serializes this TemplateRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TemplateRef&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'TemplateRef(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $TemplateRefCopyWith<$Res>  {
  factory $TemplateRefCopyWith(TemplateRef value, $Res Function(TemplateRef) _then) = _$TemplateRefCopyWithImpl;
@useResult
$Res call({
 int id, String name
});




}
/// @nodoc
class _$TemplateRefCopyWithImpl<$Res>
    implements $TemplateRefCopyWith<$Res> {
  _$TemplateRefCopyWithImpl(this._self, this._then);

  final TemplateRef _self;
  final $Res Function(TemplateRef) _then;

/// Create a copy of TemplateRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TemplateRef].
extension TemplateRefPatterns on TemplateRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TemplateRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TemplateRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TemplateRef value)  $default,){
final _that = this;
switch (_that) {
case _TemplateRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TemplateRef value)?  $default,){
final _that = this;
switch (_that) {
case _TemplateRef() when $default != null:
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
case _TemplateRef() when $default != null:
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
case _TemplateRef():
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
case _TemplateRef() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TemplateRef implements TemplateRef {
  const _TemplateRef({required this.id, required this.name});
  factory _TemplateRef.fromJson(Map<String, dynamic> json) => _$TemplateRefFromJson(json);

@override final  int id;
@override final  String name;

/// Create a copy of TemplateRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TemplateRefCopyWith<_TemplateRef> get copyWith => __$TemplateRefCopyWithImpl<_TemplateRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TemplateRefToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TemplateRef&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'TemplateRef(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$TemplateRefCopyWith<$Res> implements $TemplateRefCopyWith<$Res> {
  factory _$TemplateRefCopyWith(_TemplateRef value, $Res Function(_TemplateRef) _then) = __$TemplateRefCopyWithImpl;
@override @useResult
$Res call({
 int id, String name
});




}
/// @nodoc
class __$TemplateRefCopyWithImpl<$Res>
    implements _$TemplateRefCopyWith<$Res> {
  __$TemplateRefCopyWithImpl(this._self, this._then);

  final _TemplateRef _self;
  final $Res Function(_TemplateRef) _then;

/// Create a copy of TemplateRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_TemplateRef(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ReviewSummary {

 double get review;@JsonKey(name: 'review_ids') List<ReviewItem> get reviewIds;
/// Create a copy of ReviewSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewSummaryCopyWith<ReviewSummary> get copyWith => _$ReviewSummaryCopyWithImpl<ReviewSummary>(this as ReviewSummary, _$identity);

  /// Serializes this ReviewSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewSummary&&(identical(other.review, review) || other.review == review)&&const DeepCollectionEquality().equals(other.reviewIds, reviewIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,review,const DeepCollectionEquality().hash(reviewIds));

@override
String toString() {
  return 'ReviewSummary(review: $review, reviewIds: $reviewIds)';
}


}

/// @nodoc
abstract mixin class $ReviewSummaryCopyWith<$Res>  {
  factory $ReviewSummaryCopyWith(ReviewSummary value, $Res Function(ReviewSummary) _then) = _$ReviewSummaryCopyWithImpl;
@useResult
$Res call({
 double review,@JsonKey(name: 'review_ids') List<ReviewItem> reviewIds
});




}
/// @nodoc
class _$ReviewSummaryCopyWithImpl<$Res>
    implements $ReviewSummaryCopyWith<$Res> {
  _$ReviewSummaryCopyWithImpl(this._self, this._then);

  final ReviewSummary _self;
  final $Res Function(ReviewSummary) _then;

/// Create a copy of ReviewSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? review = null,Object? reviewIds = null,}) {
  return _then(_self.copyWith(
review: null == review ? _self.review : review // ignore: cast_nullable_to_non_nullable
as double,reviewIds: null == reviewIds ? _self.reviewIds : reviewIds // ignore: cast_nullable_to_non_nullable
as List<ReviewItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewSummary].
extension ReviewSummaryPatterns on ReviewSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewSummary value)  $default,){
final _that = this;
switch (_that) {
case _ReviewSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewSummary value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double review, @JsonKey(name: 'review_ids')  List<ReviewItem> reviewIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewSummary() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double review, @JsonKey(name: 'review_ids')  List<ReviewItem> reviewIds)  $default,) {final _that = this;
switch (_that) {
case _ReviewSummary():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double review, @JsonKey(name: 'review_ids')  List<ReviewItem> reviewIds)?  $default,) {final _that = this;
switch (_that) {
case _ReviewSummary() when $default != null:
return $default(_that.review,_that.reviewIds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewSummary implements ReviewSummary {
  const _ReviewSummary({this.review = 0.0, @JsonKey(name: 'review_ids') final  List<ReviewItem> reviewIds = const <ReviewItem>[]}): _reviewIds = reviewIds;
  factory _ReviewSummary.fromJson(Map<String, dynamic> json) => _$ReviewSummaryFromJson(json);

@override@JsonKey() final  double review;
 final  List<ReviewItem> _reviewIds;
@override@JsonKey(name: 'review_ids') List<ReviewItem> get reviewIds {
  if (_reviewIds is EqualUnmodifiableListView) return _reviewIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reviewIds);
}


/// Create a copy of ReviewSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewSummaryCopyWith<_ReviewSummary> get copyWith => __$ReviewSummaryCopyWithImpl<_ReviewSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewSummary&&(identical(other.review, review) || other.review == review)&&const DeepCollectionEquality().equals(other._reviewIds, _reviewIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,review,const DeepCollectionEquality().hash(_reviewIds));

@override
String toString() {
  return 'ReviewSummary(review: $review, reviewIds: $reviewIds)';
}


}

/// @nodoc
abstract mixin class _$ReviewSummaryCopyWith<$Res> implements $ReviewSummaryCopyWith<$Res> {
  factory _$ReviewSummaryCopyWith(_ReviewSummary value, $Res Function(_ReviewSummary) _then) = __$ReviewSummaryCopyWithImpl;
@override @useResult
$Res call({
 double review,@JsonKey(name: 'review_ids') List<ReviewItem> reviewIds
});




}
/// @nodoc
class __$ReviewSummaryCopyWithImpl<$Res>
    implements _$ReviewSummaryCopyWith<$Res> {
  __$ReviewSummaryCopyWithImpl(this._self, this._then);

  final _ReviewSummary _self;
  final $Res Function(_ReviewSummary) _then;

/// Create a copy of ReviewSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? review = null,Object? reviewIds = null,}) {
  return _then(_ReviewSummary(
review: null == review ? _self.review : review // ignore: cast_nullable_to_non_nullable
as double,reviewIds: null == reviewIds ? _self._reviewIds : reviewIds // ignore: cast_nullable_to_non_nullable
as List<ReviewItem>,
  ));
}


}


/// @nodoc
mixin _$ReviewItem {

@JsonKey(name: 'review_id') int get reviewId;@JsonKey(name: 'review_text') String get reviewText; ReviewUser get user; String get date;@JsonKey(name: 'stars_count') double get starsCount;
/// Create a copy of ReviewItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewItemCopyWith<ReviewItem> get copyWith => _$ReviewItemCopyWithImpl<ReviewItem>(this as ReviewItem, _$identity);

  /// Serializes this ReviewItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewItem&&(identical(other.reviewId, reviewId) || other.reviewId == reviewId)&&(identical(other.reviewText, reviewText) || other.reviewText == reviewText)&&(identical(other.user, user) || other.user == user)&&(identical(other.date, date) || other.date == date)&&(identical(other.starsCount, starsCount) || other.starsCount == starsCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reviewId,reviewText,user,date,starsCount);

@override
String toString() {
  return 'ReviewItem(reviewId: $reviewId, reviewText: $reviewText, user: $user, date: $date, starsCount: $starsCount)';
}


}

/// @nodoc
abstract mixin class $ReviewItemCopyWith<$Res>  {
  factory $ReviewItemCopyWith(ReviewItem value, $Res Function(ReviewItem) _then) = _$ReviewItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'review_id') int reviewId,@JsonKey(name: 'review_text') String reviewText, ReviewUser user, String date,@JsonKey(name: 'stars_count') double starsCount
});


$ReviewUserCopyWith<$Res> get user;

}
/// @nodoc
class _$ReviewItemCopyWithImpl<$Res>
    implements $ReviewItemCopyWith<$Res> {
  _$ReviewItemCopyWithImpl(this._self, this._then);

  final ReviewItem _self;
  final $Res Function(ReviewItem) _then;

/// Create a copy of ReviewItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reviewId = null,Object? reviewText = null,Object? user = null,Object? date = null,Object? starsCount = null,}) {
  return _then(_self.copyWith(
reviewId: null == reviewId ? _self.reviewId : reviewId // ignore: cast_nullable_to_non_nullable
as int,reviewText: null == reviewText ? _self.reviewText : reviewText // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as ReviewUser,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,starsCount: null == starsCount ? _self.starsCount : starsCount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}
/// Create a copy of ReviewItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewUserCopyWith<$Res> get user {
  
  return $ReviewUserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReviewItem].
extension ReviewItemPatterns on ReviewItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewItem value)  $default,){
final _that = this;
switch (_that) {
case _ReviewItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewItem value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'review_id')  int reviewId, @JsonKey(name: 'review_text')  String reviewText,  ReviewUser user,  String date, @JsonKey(name: 'stars_count')  double starsCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewItem() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'review_id')  int reviewId, @JsonKey(name: 'review_text')  String reviewText,  ReviewUser user,  String date, @JsonKey(name: 'stars_count')  double starsCount)  $default,) {final _that = this;
switch (_that) {
case _ReviewItem():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'review_id')  int reviewId, @JsonKey(name: 'review_text')  String reviewText,  ReviewUser user,  String date, @JsonKey(name: 'stars_count')  double starsCount)?  $default,) {final _that = this;
switch (_that) {
case _ReviewItem() when $default != null:
return $default(_that.reviewId,_that.reviewText,_that.user,_that.date,_that.starsCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewItem implements ReviewItem {
  const _ReviewItem({@JsonKey(name: 'review_id') required this.reviewId, @JsonKey(name: 'review_text') required this.reviewText, required this.user, required this.date, @JsonKey(name: 'stars_count') required this.starsCount});
  factory _ReviewItem.fromJson(Map<String, dynamic> json) => _$ReviewItemFromJson(json);

@override@JsonKey(name: 'review_id') final  int reviewId;
@override@JsonKey(name: 'review_text') final  String reviewText;
@override final  ReviewUser user;
@override final  String date;
@override@JsonKey(name: 'stars_count') final  double starsCount;

/// Create a copy of ReviewItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewItemCopyWith<_ReviewItem> get copyWith => __$ReviewItemCopyWithImpl<_ReviewItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewItem&&(identical(other.reviewId, reviewId) || other.reviewId == reviewId)&&(identical(other.reviewText, reviewText) || other.reviewText == reviewText)&&(identical(other.user, user) || other.user == user)&&(identical(other.date, date) || other.date == date)&&(identical(other.starsCount, starsCount) || other.starsCount == starsCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reviewId,reviewText,user,date,starsCount);

@override
String toString() {
  return 'ReviewItem(reviewId: $reviewId, reviewText: $reviewText, user: $user, date: $date, starsCount: $starsCount)';
}


}

/// @nodoc
abstract mixin class _$ReviewItemCopyWith<$Res> implements $ReviewItemCopyWith<$Res> {
  factory _$ReviewItemCopyWith(_ReviewItem value, $Res Function(_ReviewItem) _then) = __$ReviewItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'review_id') int reviewId,@JsonKey(name: 'review_text') String reviewText, ReviewUser user, String date,@JsonKey(name: 'stars_count') double starsCount
});


@override $ReviewUserCopyWith<$Res> get user;

}
/// @nodoc
class __$ReviewItemCopyWithImpl<$Res>
    implements _$ReviewItemCopyWith<$Res> {
  __$ReviewItemCopyWithImpl(this._self, this._then);

  final _ReviewItem _self;
  final $Res Function(_ReviewItem) _then;

/// Create a copy of ReviewItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reviewId = null,Object? reviewText = null,Object? user = null,Object? date = null,Object? starsCount = null,}) {
  return _then(_ReviewItem(
reviewId: null == reviewId ? _self.reviewId : reviewId // ignore: cast_nullable_to_non_nullable
as int,reviewText: null == reviewText ? _self.reviewText : reviewText // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as ReviewUser,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,starsCount: null == starsCount ? _self.starsCount : starsCount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

/// Create a copy of ReviewItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewUserCopyWith<$Res> get user {
  
  return $ReviewUserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// @nodoc
mixin _$ReviewUser {

 int get id; String get name;
/// Create a copy of ReviewUser
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewUserCopyWith<ReviewUser> get copyWith => _$ReviewUserCopyWithImpl<ReviewUser>(this as ReviewUser, _$identity);

  /// Serializes this ReviewUser to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewUser&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'ReviewUser(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $ReviewUserCopyWith<$Res>  {
  factory $ReviewUserCopyWith(ReviewUser value, $Res Function(ReviewUser) _then) = _$ReviewUserCopyWithImpl;
@useResult
$Res call({
 int id, String name
});




}
/// @nodoc
class _$ReviewUserCopyWithImpl<$Res>
    implements $ReviewUserCopyWith<$Res> {
  _$ReviewUserCopyWithImpl(this._self, this._then);

  final ReviewUser _self;
  final $Res Function(ReviewUser) _then;

/// Create a copy of ReviewUser
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewUser].
extension ReviewUserPatterns on ReviewUser {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewUser value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewUser() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewUser value)  $default,){
final _that = this;
switch (_that) {
case _ReviewUser():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewUser value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewUser() when $default != null:
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
case _ReviewUser() when $default != null:
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
case _ReviewUser():
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
case _ReviewUser() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewUser implements ReviewUser {
  const _ReviewUser({required this.id, required this.name});
  factory _ReviewUser.fromJson(Map<String, dynamic> json) => _$ReviewUserFromJson(json);

@override final  int id;
@override final  String name;

/// Create a copy of ReviewUser
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewUserCopyWith<_ReviewUser> get copyWith => __$ReviewUserCopyWithImpl<_ReviewUser>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewUserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewUser&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'ReviewUser(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$ReviewUserCopyWith<$Res> implements $ReviewUserCopyWith<$Res> {
  factory _$ReviewUserCopyWith(_ReviewUser value, $Res Function(_ReviewUser) _then) = __$ReviewUserCopyWithImpl;
@override @useResult
$Res call({
 int id, String name
});




}
/// @nodoc
class __$ReviewUserCopyWithImpl<$Res>
    implements _$ReviewUserCopyWith<$Res> {
  __$ReviewUserCopyWithImpl(this._self, this._then);

  final _ReviewUser _self;
  final $Res Function(_ReviewUser) _then;

/// Create a copy of ReviewUser
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_ReviewUser(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ProductPage {

 List<ProductEntity> get data; int get length;@JsonKey(name: 'total_pages') int get totalPages;@JsonKey(name: 'message') String? get message;
/// Create a copy of ProductPage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductPageCopyWith<ProductPage> get copyWith => _$ProductPageCopyWithImpl<ProductPage>(this as ProductPage, _$identity);

  /// Serializes this ProductPage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductPage&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.length, length) || other.length == length)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),length,totalPages,message);

@override
String toString() {
  return 'ProductPage(data: $data, length: $length, totalPages: $totalPages, message: $message)';
}


}

/// @nodoc
abstract mixin class $ProductPageCopyWith<$Res>  {
  factory $ProductPageCopyWith(ProductPage value, $Res Function(ProductPage) _then) = _$ProductPageCopyWithImpl;
@useResult
$Res call({
 List<ProductEntity> data, int length,@JsonKey(name: 'total_pages') int totalPages,@JsonKey(name: 'message') String? message
});




}
/// @nodoc
class _$ProductPageCopyWithImpl<$Res>
    implements $ProductPageCopyWith<$Res> {
  _$ProductPageCopyWithImpl(this._self, this._then);

  final ProductPage _self;
  final $Res Function(ProductPage) _then;

/// Create a copy of ProductPage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? length = null,Object? totalPages = null,Object? message = freezed,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ProductEntity>,length: null == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductPage].
extension ProductPagePatterns on ProductPage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductPage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductPage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductPage value)  $default,){
final _that = this;
switch (_that) {
case _ProductPage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductPage value)?  $default,){
final _that = this;
switch (_that) {
case _ProductPage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ProductEntity> data,  int length, @JsonKey(name: 'total_pages')  int totalPages, @JsonKey(name: 'message')  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductPage() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ProductEntity> data,  int length, @JsonKey(name: 'total_pages')  int totalPages, @JsonKey(name: 'message')  String? message)  $default,) {final _that = this;
switch (_that) {
case _ProductPage():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ProductEntity> data,  int length, @JsonKey(name: 'total_pages')  int totalPages, @JsonKey(name: 'message')  String? message)?  $default,) {final _that = this;
switch (_that) {
case _ProductPage() when $default != null:
return $default(_that.data,_that.length,_that.totalPages,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductPage implements ProductPage {
  const _ProductPage({required final  List<ProductEntity> data, required this.length, @JsonKey(name: 'total_pages') required this.totalPages, @JsonKey(name: 'message') this.message}): _data = data;
  factory _ProductPage.fromJson(Map<String, dynamic> json) => _$ProductPageFromJson(json);

 final  List<ProductEntity> _data;
@override List<ProductEntity> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  int length;
@override@JsonKey(name: 'total_pages') final  int totalPages;
@override@JsonKey(name: 'message') final  String? message;

/// Create a copy of ProductPage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductPageCopyWith<_ProductPage> get copyWith => __$ProductPageCopyWithImpl<_ProductPage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductPageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductPage&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.length, length) || other.length == length)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),length,totalPages,message);

@override
String toString() {
  return 'ProductPage(data: $data, length: $length, totalPages: $totalPages, message: $message)';
}


}

/// @nodoc
abstract mixin class _$ProductPageCopyWith<$Res> implements $ProductPageCopyWith<$Res> {
  factory _$ProductPageCopyWith(_ProductPage value, $Res Function(_ProductPage) _then) = __$ProductPageCopyWithImpl;
@override @useResult
$Res call({
 List<ProductEntity> data, int length,@JsonKey(name: 'total_pages') int totalPages,@JsonKey(name: 'message') String? message
});




}
/// @nodoc
class __$ProductPageCopyWithImpl<$Res>
    implements _$ProductPageCopyWith<$Res> {
  __$ProductPageCopyWithImpl(this._self, this._then);

  final _ProductPage _self;
  final $Res Function(_ProductPage) _then;

/// Create a copy of ProductPage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? length = null,Object? totalPages = null,Object? message = freezed,}) {
  return _then(_ProductPage(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ProductEntity>,length: null == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
