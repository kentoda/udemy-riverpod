// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firebase_count.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FirebaseCount _$$_FirebaseCountFromJson(Map<String, dynamic> json) =>
    _$_FirebaseCount(
      dateTime: DateTime.parse(json['dateTime'] as String),
      count: json['count'] as int,
    );

Map<String, dynamic> _$$_FirebaseCountToJson(_$_FirebaseCount instance) =>
    <String, dynamic>{
      'dateTime': instance.dateTime.toIso8601String(),
      'count': instance.count,
    };
