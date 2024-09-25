// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Product {
  String get title => throw _privateConstructorUsedError; // Product title
  String get platform =>
      throw _privateConstructorUsedError; // Platform like Steam, PS4
  String get platformIconUrl =>
      throw _privateConstructorUsedError; // Platform icon URL
  String get activationCountry =>
      throw _privateConstructorUsedError; // Activation country
  String get region =>
      throw _privateConstructorUsedError; // Region like Global, Europe
  String get device =>
      throw _privateConstructorUsedError; // Device like PC, PS4, etc.
  String get type =>
      throw _privateConstructorUsedError; // Like key, bundle, etc.
  double get price => throw _privateConstructorUsedError; // Product price
  String? get trailerUrl =>
      throw _privateConstructorUsedError; // YouTube trailer URL
  List<String>? get mediaUrls =>
      throw _privateConstructorUsedError; // List of thumbnail images/videos
  List<String>? get tags =>
      throw _privateConstructorUsedError; // Tags associated with the product
  String get productDescription =>
      throw _privateConstructorUsedError; // Description of the product
  SystemRequirements get minimumRequirements =>
      throw _privateConstructorUsedError; // Minimum system requirements
  SystemRequirements get recommendedRequirements =>
      throw _privateConstructorUsedError; // Recommended system requirements
  List<String> get ageClassifications => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {String title,
      String platform,
      String platformIconUrl,
      String activationCountry,
      String region,
      String device,
      String type,
      double price,
      String? trailerUrl,
      List<String>? mediaUrls,
      List<String>? tags,
      String productDescription,
      SystemRequirements minimumRequirements,
      SystemRequirements recommendedRequirements,
      List<String> ageClassifications});

  $SystemRequirementsCopyWith<$Res> get minimumRequirements;
  $SystemRequirementsCopyWith<$Res> get recommendedRequirements;
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? platform = null,
    Object? platformIconUrl = null,
    Object? activationCountry = null,
    Object? region = null,
    Object? device = null,
    Object? type = null,
    Object? price = null,
    Object? trailerUrl = freezed,
    Object? mediaUrls = freezed,
    Object? tags = freezed,
    Object? productDescription = null,
    Object? minimumRequirements = null,
    Object? recommendedRequirements = null,
    Object? ageClassifications = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      platformIconUrl: null == platformIconUrl
          ? _value.platformIconUrl
          : platformIconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      activationCountry: null == activationCountry
          ? _value.activationCountry
          : activationCountry // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      trailerUrl: freezed == trailerUrl
          ? _value.trailerUrl
          : trailerUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaUrls: freezed == mediaUrls
          ? _value.mediaUrls
          : mediaUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      productDescription: null == productDescription
          ? _value.productDescription
          : productDescription // ignore: cast_nullable_to_non_nullable
              as String,
      minimumRequirements: null == minimumRequirements
          ? _value.minimumRequirements
          : minimumRequirements // ignore: cast_nullable_to_non_nullable
              as SystemRequirements,
      recommendedRequirements: null == recommendedRequirements
          ? _value.recommendedRequirements
          : recommendedRequirements // ignore: cast_nullable_to_non_nullable
              as SystemRequirements,
      ageClassifications: null == ageClassifications
          ? _value.ageClassifications
          : ageClassifications // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SystemRequirementsCopyWith<$Res> get minimumRequirements {
    return $SystemRequirementsCopyWith<$Res>(_value.minimumRequirements,
        (value) {
      return _then(_value.copyWith(minimumRequirements: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SystemRequirementsCopyWith<$Res> get recommendedRequirements {
    return $SystemRequirementsCopyWith<$Res>(_value.recommendedRequirements,
        (value) {
      return _then(_value.copyWith(recommendedRequirements: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String platform,
      String platformIconUrl,
      String activationCountry,
      String region,
      String device,
      String type,
      double price,
      String? trailerUrl,
      List<String>? mediaUrls,
      List<String>? tags,
      String productDescription,
      SystemRequirements minimumRequirements,
      SystemRequirements recommendedRequirements,
      List<String> ageClassifications});

  @override
  $SystemRequirementsCopyWith<$Res> get minimumRequirements;
  @override
  $SystemRequirementsCopyWith<$Res> get recommendedRequirements;
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? platform = null,
    Object? platformIconUrl = null,
    Object? activationCountry = null,
    Object? region = null,
    Object? device = null,
    Object? type = null,
    Object? price = null,
    Object? trailerUrl = freezed,
    Object? mediaUrls = freezed,
    Object? tags = freezed,
    Object? productDescription = null,
    Object? minimumRequirements = null,
    Object? recommendedRequirements = null,
    Object? ageClassifications = null,
  }) {
    return _then(_$ProductImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      platformIconUrl: null == platformIconUrl
          ? _value.platformIconUrl
          : platformIconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      activationCountry: null == activationCountry
          ? _value.activationCountry
          : activationCountry // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      trailerUrl: freezed == trailerUrl
          ? _value.trailerUrl
          : trailerUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaUrls: freezed == mediaUrls
          ? _value._mediaUrls
          : mediaUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      productDescription: null == productDescription
          ? _value.productDescription
          : productDescription // ignore: cast_nullable_to_non_nullable
              as String,
      minimumRequirements: null == minimumRequirements
          ? _value.minimumRequirements
          : minimumRequirements // ignore: cast_nullable_to_non_nullable
              as SystemRequirements,
      recommendedRequirements: null == recommendedRequirements
          ? _value.recommendedRequirements
          : recommendedRequirements // ignore: cast_nullable_to_non_nullable
              as SystemRequirements,
      ageClassifications: null == ageClassifications
          ? _value._ageClassifications
          : ageClassifications // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$ProductImpl extends _Product {
  const _$ProductImpl(
      {required this.title,
      required this.platform,
      required this.platformIconUrl,
      required this.activationCountry,
      required this.region,
      required this.device,
      required this.type,
      required this.price,
      this.trailerUrl,
      final List<String>? mediaUrls,
      final List<String>? tags,
      required this.productDescription,
      required this.minimumRequirements,
      required this.recommendedRequirements,
      required final List<String> ageClassifications})
      : _mediaUrls = mediaUrls,
        _tags = tags,
        _ageClassifications = ageClassifications,
        super._();

  @override
  final String title;
// Product title
  @override
  final String platform;
// Platform like Steam, PS4
  @override
  final String platformIconUrl;
// Platform icon URL
  @override
  final String activationCountry;
// Activation country
  @override
  final String region;
// Region like Global, Europe
  @override
  final String device;
// Device like PC, PS4, etc.
  @override
  final String type;
// Like key, bundle, etc.
  @override
  final double price;
// Product price
  @override
  final String? trailerUrl;
// YouTube trailer URL
  final List<String>? _mediaUrls;
// YouTube trailer URL
  @override
  List<String>? get mediaUrls {
    final value = _mediaUrls;
    if (value == null) return null;
    if (_mediaUrls is EqualUnmodifiableListView) return _mediaUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// List of thumbnail images/videos
  final List<String>? _tags;
// List of thumbnail images/videos
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// Tags associated with the product
  @override
  final String productDescription;
// Description of the product
  @override
  final SystemRequirements minimumRequirements;
// Minimum system requirements
  @override
  final SystemRequirements recommendedRequirements;
// Recommended system requirements
  final List<String> _ageClassifications;
// Recommended system requirements
  @override
  List<String> get ageClassifications {
    if (_ageClassifications is EqualUnmodifiableListView)
      return _ageClassifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ageClassifications);
  }

  @override
  String toString() {
    return 'Product(title: $title, platform: $platform, platformIconUrl: $platformIconUrl, activationCountry: $activationCountry, region: $region, device: $device, type: $type, price: $price, trailerUrl: $trailerUrl, mediaUrls: $mediaUrls, tags: $tags, productDescription: $productDescription, minimumRequirements: $minimumRequirements, recommendedRequirements: $recommendedRequirements, ageClassifications: $ageClassifications)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.platformIconUrl, platformIconUrl) ||
                other.platformIconUrl == platformIconUrl) &&
            (identical(other.activationCountry, activationCountry) ||
                other.activationCountry == activationCountry) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.device, device) || other.device == device) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.trailerUrl, trailerUrl) ||
                other.trailerUrl == trailerUrl) &&
            const DeepCollectionEquality()
                .equals(other._mediaUrls, _mediaUrls) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.productDescription, productDescription) ||
                other.productDescription == productDescription) &&
            (identical(other.minimumRequirements, minimumRequirements) ||
                other.minimumRequirements == minimumRequirements) &&
            (identical(
                    other.recommendedRequirements, recommendedRequirements) ||
                other.recommendedRequirements == recommendedRequirements) &&
            const DeepCollectionEquality()
                .equals(other._ageClassifications, _ageClassifications));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      platform,
      platformIconUrl,
      activationCountry,
      region,
      device,
      type,
      price,
      trailerUrl,
      const DeepCollectionEquality().hash(_mediaUrls),
      const DeepCollectionEquality().hash(_tags),
      productDescription,
      minimumRequirements,
      recommendedRequirements,
      const DeepCollectionEquality().hash(_ageClassifications));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);
}

abstract class _Product extends Product {
  const factory _Product(
      {required final String title,
      required final String platform,
      required final String platformIconUrl,
      required final String activationCountry,
      required final String region,
      required final String device,
      required final String type,
      required final double price,
      final String? trailerUrl,
      final List<String>? mediaUrls,
      final List<String>? tags,
      required final String productDescription,
      required final SystemRequirements minimumRequirements,
      required final SystemRequirements recommendedRequirements,
      required final List<String> ageClassifications}) = _$ProductImpl;
  const _Product._() : super._();

  @override
  String get title;
  @override // Product title
  String get platform;
  @override // Platform like Steam, PS4
  String get platformIconUrl;
  @override // Platform icon URL
  String get activationCountry;
  @override // Activation country
  String get region;
  @override // Region like Global, Europe
  String get device;
  @override // Device like PC, PS4, etc.
  String get type;
  @override // Like key, bundle, etc.
  double get price;
  @override // Product price
  String? get trailerUrl;
  @override // YouTube trailer URL
  List<String>? get mediaUrls;
  @override // List of thumbnail images/videos
  List<String>? get tags;
  @override // Tags associated with the product
  String get productDescription;
  @override // Description of the product
  SystemRequirements get minimumRequirements;
  @override // Minimum system requirements
  SystemRequirements get recommendedRequirements;
  @override // Recommended system requirements
  List<String> get ageClassifications;
  @override
  @JsonKey(ignore: true)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SystemRequirements {
  String get os => throw _privateConstructorUsedError; // Operating system
  String get cpu => throw _privateConstructorUsedError; // CPU requirements
  String get gpu => throw _privateConstructorUsedError; // GPU requirements
  int get ram => throw _privateConstructorUsedError; // RAM size in GB
  int get storage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SystemRequirementsCopyWith<SystemRequirements> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SystemRequirementsCopyWith<$Res> {
  factory $SystemRequirementsCopyWith(
          SystemRequirements value, $Res Function(SystemRequirements) then) =
      _$SystemRequirementsCopyWithImpl<$Res, SystemRequirements>;
  @useResult
  $Res call({String os, String cpu, String gpu, int ram, int storage});
}

/// @nodoc
class _$SystemRequirementsCopyWithImpl<$Res, $Val extends SystemRequirements>
    implements $SystemRequirementsCopyWith<$Res> {
  _$SystemRequirementsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? os = null,
    Object? cpu = null,
    Object? gpu = null,
    Object? ram = null,
    Object? storage = null,
  }) {
    return _then(_value.copyWith(
      os: null == os
          ? _value.os
          : os // ignore: cast_nullable_to_non_nullable
              as String,
      cpu: null == cpu
          ? _value.cpu
          : cpu // ignore: cast_nullable_to_non_nullable
              as String,
      gpu: null == gpu
          ? _value.gpu
          : gpu // ignore: cast_nullable_to_non_nullable
              as String,
      ram: null == ram
          ? _value.ram
          : ram // ignore: cast_nullable_to_non_nullable
              as int,
      storage: null == storage
          ? _value.storage
          : storage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SystemRequirementsImplCopyWith<$Res>
    implements $SystemRequirementsCopyWith<$Res> {
  factory _$$SystemRequirementsImplCopyWith(_$SystemRequirementsImpl value,
          $Res Function(_$SystemRequirementsImpl) then) =
      __$$SystemRequirementsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String os, String cpu, String gpu, int ram, int storage});
}

/// @nodoc
class __$$SystemRequirementsImplCopyWithImpl<$Res>
    extends _$SystemRequirementsCopyWithImpl<$Res, _$SystemRequirementsImpl>
    implements _$$SystemRequirementsImplCopyWith<$Res> {
  __$$SystemRequirementsImplCopyWithImpl(_$SystemRequirementsImpl _value,
      $Res Function(_$SystemRequirementsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? os = null,
    Object? cpu = null,
    Object? gpu = null,
    Object? ram = null,
    Object? storage = null,
  }) {
    return _then(_$SystemRequirementsImpl(
      os: null == os
          ? _value.os
          : os // ignore: cast_nullable_to_non_nullable
              as String,
      cpu: null == cpu
          ? _value.cpu
          : cpu // ignore: cast_nullable_to_non_nullable
              as String,
      gpu: null == gpu
          ? _value.gpu
          : gpu // ignore: cast_nullable_to_non_nullable
              as String,
      ram: null == ram
          ? _value.ram
          : ram // ignore: cast_nullable_to_non_nullable
              as int,
      storage: null == storage
          ? _value.storage
          : storage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SystemRequirementsImpl extends _SystemRequirements {
  const _$SystemRequirementsImpl(
      {required this.os,
      required this.cpu,
      required this.gpu,
      required this.ram,
      required this.storage})
      : super._();

  @override
  final String os;
// Operating system
  @override
  final String cpu;
// CPU requirements
  @override
  final String gpu;
// GPU requirements
  @override
  final int ram;
// RAM size in GB
  @override
  final int storage;

  @override
  String toString() {
    return 'SystemRequirements(os: $os, cpu: $cpu, gpu: $gpu, ram: $ram, storage: $storage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SystemRequirementsImpl &&
            (identical(other.os, os) || other.os == os) &&
            (identical(other.cpu, cpu) || other.cpu == cpu) &&
            (identical(other.gpu, gpu) || other.gpu == gpu) &&
            (identical(other.ram, ram) || other.ram == ram) &&
            (identical(other.storage, storage) || other.storage == storage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, os, cpu, gpu, ram, storage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SystemRequirementsImplCopyWith<_$SystemRequirementsImpl> get copyWith =>
      __$$SystemRequirementsImplCopyWithImpl<_$SystemRequirementsImpl>(
          this, _$identity);
}

abstract class _SystemRequirements extends SystemRequirements {
  const factory _SystemRequirements(
      {required final String os,
      required final String cpu,
      required final String gpu,
      required final int ram,
      required final int storage}) = _$SystemRequirementsImpl;
  const _SystemRequirements._() : super._();

  @override
  String get os;
  @override // Operating system
  String get cpu;
  @override // CPU requirements
  String get gpu;
  @override // GPU requirements
  int get ram;
  @override // RAM size in GB
  int get storage;
  @override
  @JsonKey(ignore: true)
  _$$SystemRequirementsImplCopyWith<_$SystemRequirementsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
