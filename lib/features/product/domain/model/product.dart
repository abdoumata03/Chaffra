import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required String title, // Product title
    required String platform, // Platform like Steam, PS4
    required String platformIconUrl, // Platform icon URL
    required String activationCountry, // Activation country
    required String region, // Region like Global, Europe
    required String device, // Device like PC, PS4, etc.
    required String type, // Like key, bundle, etc.
    required double price, // Product price
    String? trailerUrl, // YouTube trailer URL
    List<String>? mediaUrls, // List of thumbnail images/videos
    List<String>? tags, // Tags associated with the product
    required String productDescription, // Description of the product
    required SystemRequirements
        minimumRequirements, // Minimum system requirements
    required SystemRequirements
        recommendedRequirements, // Recommended system requirements
    required List<String>
        ageClassifications, // List of age classification icons
  }) = _Product;

  const Product._();
}

@freezed
class SystemRequirements with _$SystemRequirements {
  const factory SystemRequirements({
    required String os, // Operating system
    required String cpu, // CPU requirements
    required String gpu, // GPU requirements
    required int ram, // RAM size in GB
    required int storage, // Storage size in GB
  }) = _SystemRequirements;

  const SystemRequirements._();
}
