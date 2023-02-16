import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'brand_model.freezed.dart';
part 'brand_model.g.dart';

@freezed
class Brand with _$Brand {
  const factory Brand({
    required String bannerUrl,
  }) = _Brand;

  factory Brand.fromJson(Map<String, Object?> json)
      => _$BrandFromJson(json);
}