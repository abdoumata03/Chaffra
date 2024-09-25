import 'package:freezed_annotation/freezed_annotation.dart';

part 'marketplace_offer.freezed.dart';

@freezed
class MarketplaceOffer with _$MarketplaceOffer {
  const factory MarketplaceOffer({
    required String storeName, // Store name (like Steam, Epic Games, etc.)
    required double ratingPercentage, // Store rating in percentage
    required double price, // Price of the product at this store
    required int sales,
    String? storeIconUrl, // Store icon URL
    String? tag, // "selected" or "cheapest"
  }) = _MarketplaceOffer;

  const MarketplaceOffer._();
}
