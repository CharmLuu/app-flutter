import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required String title,
    required String thumbnail,
    required String price,
    required String old_price,
  }) = _Product;

  factory Product.fromJson(Map<String, Object?> json)
      => _$ProductFromJson(json);
}