import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'character.dart';

part 'comics.freezed.dart';
part 'comics.g.dart';

@freezed
class ComicsUrl with _$ComicsUrl {
  const ComicsUrl._();
  const factory ComicsUrl({
    required String resourceURI,
    required String name,
  }) = _ComicsUrl;

  factory ComicsUrl.fromJson(Map<String, dynamic> json) =>
      _$ComicsUrlFromJson(json);
}

@freezed
class ComicsUrlResponse with _$ComicsUrlResponse {
  const factory ComicsUrlResponse({
    required int available,
    @Default([]) List<ComicsUrl> items,
  }) = _ComicsUrlResponse;

  factory ComicsUrlResponse.fromJson(Map<String, dynamic> json) =>
      _$ComicsUrlResponseFromJson(json);
}

@freezed
class Comic with _$Comic {
  const Comic._();
  const factory Comic({
    int? id,
    int? digitalId,
    String? title,
    double? issueNumber,
    String? description,
    int? pageCount,
    @Default([]) List<ComicPrice> prices,
    Thumbnail? thumbnail,
  }) = _Comic;

  factory Comic.fromJson(Map<String, dynamic> json) => _$ComicFromJson(json);
}

@freezed
class ComicPrice with _$ComicPrice {
  const factory ComicPrice({
    required PriceType type,
    required double price,
  }) = _ComicPrice;

  factory ComicPrice.fromJson(Map<String, dynamic> json) =>
      _$ComicPriceFromJson(json);
}

enum PriceType {
  @JsonValue('printPrice')
  printed('Impresso', Icons.print),

  @JsonValue('digitalPurchasePrice')
  digital('Digital', Icons.picture_as_pdf);

  final String label;
  final IconData icon;
  const PriceType(this.label, this.icon);
}
