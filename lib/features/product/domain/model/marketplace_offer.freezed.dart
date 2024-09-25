// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'marketplace_offer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MarketplaceOffer {
  String get storeName =>
      throw _privateConstructorUsedError; // Store name (like Steam, Epic Games, etc.)
  double get ratingPercentage =>
      throw _privateConstructorUsedError; // Store rating in percentage
  double get price =>
      throw _privateConstructorUsedError; // Price of the product at this store
  int get sales => throw _privateConstructorUsedError;
  String? get storeIconUrl =>
      throw _privateConstructorUsedError; // Store icon URL
  String? get tag => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MarketplaceOfferCopyWith<MarketplaceOffer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketplaceOfferCopyWith<$Res> {
  factory $MarketplaceOfferCopyWith(
          MarketplaceOffer value, $Res Function(MarketplaceOffer) then) =
      _$MarketplaceOfferCopyWithImpl<$Res, MarketplaceOffer>;
  @useResult
  $Res call(
      {String storeName,
      double ratingPercentage,
      double price,
      int sales,
      String? storeIconUrl,
      String? tag});
}

/// @nodoc
class _$MarketplaceOfferCopyWithImpl<$Res, $Val extends MarketplaceOffer>
    implements $MarketplaceOfferCopyWith<$Res> {
  _$MarketplaceOfferCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storeName = null,
    Object? ratingPercentage = null,
    Object? price = null,
    Object? sales = null,
    Object? storeIconUrl = freezed,
    Object? tag = freezed,
  }) {
    return _then(_value.copyWith(
      storeName: null == storeName
          ? _value.storeName
          : storeName // ignore: cast_nullable_to_non_nullable
              as String,
      ratingPercentage: null == ratingPercentage
          ? _value.ratingPercentage
          : ratingPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      sales: null == sales
          ? _value.sales
          : sales // ignore: cast_nullable_to_non_nullable
              as int,
      storeIconUrl: freezed == storeIconUrl
          ? _value.storeIconUrl
          : storeIconUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      tag: freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MarketplaceOfferImplCopyWith<$Res>
    implements $MarketplaceOfferCopyWith<$Res> {
  factory _$$MarketplaceOfferImplCopyWith(_$MarketplaceOfferImpl value,
          $Res Function(_$MarketplaceOfferImpl) then) =
      __$$MarketplaceOfferImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String storeName,
      double ratingPercentage,
      double price,
      int sales,
      String? storeIconUrl,
      String? tag});
}

/// @nodoc
class __$$MarketplaceOfferImplCopyWithImpl<$Res>
    extends _$MarketplaceOfferCopyWithImpl<$Res, _$MarketplaceOfferImpl>
    implements _$$MarketplaceOfferImplCopyWith<$Res> {
  __$$MarketplaceOfferImplCopyWithImpl(_$MarketplaceOfferImpl _value,
      $Res Function(_$MarketplaceOfferImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storeName = null,
    Object? ratingPercentage = null,
    Object? price = null,
    Object? sales = null,
    Object? storeIconUrl = freezed,
    Object? tag = freezed,
  }) {
    return _then(_$MarketplaceOfferImpl(
      storeName: null == storeName
          ? _value.storeName
          : storeName // ignore: cast_nullable_to_non_nullable
              as String,
      ratingPercentage: null == ratingPercentage
          ? _value.ratingPercentage
          : ratingPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      sales: null == sales
          ? _value.sales
          : sales // ignore: cast_nullable_to_non_nullable
              as int,
      storeIconUrl: freezed == storeIconUrl
          ? _value.storeIconUrl
          : storeIconUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      tag: freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$MarketplaceOfferImpl extends _MarketplaceOffer {
  const _$MarketplaceOfferImpl(
      {required this.storeName,
      required this.ratingPercentage,
      required this.price,
      required this.sales,
      this.storeIconUrl,
      this.tag})
      : super._();

  @override
  final String storeName;
// Store name (like Steam, Epic Games, etc.)
  @override
  final double ratingPercentage;
// Store rating in percentage
  @override
  final double price;
// Price of the product at this store
  @override
  final int sales;
  @override
  final String? storeIconUrl;
// Store icon URL
  @override
  final String? tag;

  @override
  String toString() {
    return 'MarketplaceOffer(storeName: $storeName, ratingPercentage: $ratingPercentage, price: $price, sales: $sales, storeIconUrl: $storeIconUrl, tag: $tag)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketplaceOfferImpl &&
            (identical(other.storeName, storeName) ||
                other.storeName == storeName) &&
            (identical(other.ratingPercentage, ratingPercentage) ||
                other.ratingPercentage == ratingPercentage) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.sales, sales) || other.sales == sales) &&
            (identical(other.storeIconUrl, storeIconUrl) ||
                other.storeIconUrl == storeIconUrl) &&
            (identical(other.tag, tag) || other.tag == tag));
  }

  @override
  int get hashCode => Object.hash(runtimeType, storeName, ratingPercentage,
      price, sales, storeIconUrl, tag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarketplaceOfferImplCopyWith<_$MarketplaceOfferImpl> get copyWith =>
      __$$MarketplaceOfferImplCopyWithImpl<_$MarketplaceOfferImpl>(
          this, _$identity);
}

abstract class _MarketplaceOffer extends MarketplaceOffer {
  const factory _MarketplaceOffer(
      {required final String storeName,
      required final double ratingPercentage,
      required final double price,
      required final int sales,
      final String? storeIconUrl,
      final String? tag}) = _$MarketplaceOfferImpl;
  const _MarketplaceOffer._() : super._();

  @override
  String get storeName;
  @override // Store name (like Steam, Epic Games, etc.)
  double get ratingPercentage;
  @override // Store rating in percentage
  double get price;
  @override // Price of the product at this store
  int get sales;
  @override
  String? get storeIconUrl;
  @override // Store icon URL
  String? get tag;
  @override
  @JsonKey(ignore: true)
  _$$MarketplaceOfferImplCopyWith<_$MarketplaceOfferImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
