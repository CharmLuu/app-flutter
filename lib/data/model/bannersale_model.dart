import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'bannersale_model.freezed.dart';
part 'bannersale_model.g.dart';

@freezed
class Bannersale with _$Bannersale {
  const factory Bannersale({
    required String bannerUrl,
  }) = _Bannersale;

  factory Bannersale.fromJson(Map<String, Object?> json)
      => _$BannersaleFromJson(json);
}