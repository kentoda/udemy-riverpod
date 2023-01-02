import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'firebase_count.freezed.dart';
part 'firebase_count.g.dart';

@freezed
class FirebaseCount with _$FirebaseCount {
  const factory FirebaseCount({
    required DateTime dateTime,
    required int count,
  }) = _FirebaseCount;

  factory FirebaseCount.fromJson(Map<String, dynamic> json) =>
      _$FirebaseCountFromJson(json);
}
