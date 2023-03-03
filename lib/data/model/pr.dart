import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'pr.freezed.dart';
part 'pr.g.dart';

@freezed
class Pr with _$Pr {
  const factory Pr({
    required String name,
    required String urlImg,
    required String price,
    required String old_price,
    required String qty,
  }) = _Pr;

  factory Pr.fromJson(Map<String, Object?> json)
      => _$PrFromJson(json);
}