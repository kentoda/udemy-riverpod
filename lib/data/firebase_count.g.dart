// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firebase_count.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FirebaseCount _$$_FirebaseCountFromJson(Map<String, dynamic> json) =>
    _$_FirebaseCount(
      datatime: DateTime.parse(json['datatime'] as String),
      count: json['count'] as int,
    );

Map<String, dynamic> _$$_FirebaseCountToJson(_$_FirebaseCount instance) =>
    <String, dynamic>{
      'datatime': instance.datatime.toIso8601String(),
      'count': instance.count,
    };
