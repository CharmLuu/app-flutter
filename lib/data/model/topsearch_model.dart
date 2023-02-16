import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'topsearch_model.freezed.dart';
part 'topsearch_model.g.dart';

@freezed
class Topsearch with _$Topsearch {
  const factory Topsearch({
    required String thumbnail,
    required String title,
  }) = _Topsearch;

  factory Topsearch.fromJson(Map<String, Object?> json)
      => _$TopsearchFromJson(json);
}