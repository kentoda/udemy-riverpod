// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firebase_count.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FirebaseCount _$FirebaseCountFromJson(Map<String, dynamic> json) {
  return _FirebaseCount.fromJson(json);
}

/// @nodoc
mixin _$FirebaseCount {
  DateTime get datatime => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FirebaseCountCopyWith<FirebaseCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseCountCopyWith<$Res> {
  factory $FirebaseCountCopyWith(
          FirebaseCount value, $Res Function(FirebaseCount) then) =
      _$FirebaseCountCopyWithImpl<$Res, FirebaseCount>;
  @useResult
  $Res call({DateTime datatime, int count});
}

/// @nodoc
class _$FirebaseCountCopyWithImpl<$Res, $Val extends FirebaseCount>
    implements $FirebaseCountCopyWith<$Res> {
  _$FirebaseCountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datatime = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      datatime: null == datatime
          ? _value.datatime
          : datatime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FirebaseCountCopyWith<$Res>
    implements $FirebaseCountCopyWith<$Res> {
  factory _$$_FirebaseCountCopyWith(
          _$_FirebaseCount value, $Res Function(_$_FirebaseCount) then) =
      __$$_FirebaseCountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime datatime, int count});
}

/// @nodoc
class __$$_FirebaseCountCopyWithImpl<$Res>
    extends _$FirebaseCountCopyWithImpl<$Res, _$_FirebaseCount>
    implements _$$_FirebaseCountCopyWith<$Res> {
  __$$_FirebaseCountCopyWithImpl(
      _$_FirebaseCount _value, $Res Function(_$_FirebaseCount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datatime = null,
    Object? count = null,
  }) {
    return _then(_$_FirebaseCount(
      datatime: null == datatime
          ? _value.datatime
          : datatime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FirebaseCount with DiagnosticableTreeMixin implements _FirebaseCount {
  const _$_FirebaseCount({required this.datatime, required this.count});

  factory _$_FirebaseCount.fromJson(Map<String, dynamic> json) =>
      _$$_FirebaseCountFromJson(json);

  @override
  final DateTime datatime;
  @override
  final int count;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FirebaseCount(datatime: $datatime, count: $count)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FirebaseCount'))
      ..add(DiagnosticsProperty('datatime', datatime))
      ..add(DiagnosticsProperty('count', count));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FirebaseCount &&
            (identical(other.datatime, datatime) ||
                other.datatime == datatime) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, datatime, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FirebaseCountCopyWith<_$_FirebaseCount> get copyWith =>
      __$$_FirebaseCountCopyWithImpl<_$_FirebaseCount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FirebaseCountToJson(
      this,
    );
  }
}

abstract class _FirebaseCount implements FirebaseCount {
  const factory _FirebaseCount(
      {required final DateTime datatime,
      required final int count}) = _$_FirebaseCount;

  factory _FirebaseCount.fromJson(Map<String, dynamic> json) =
      _$_FirebaseCount.fromJson;

  @override
  DateTime get datatime;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$_FirebaseCountCopyWith<_$_FirebaseCount> get copyWith =>
      throw _privateConstructorUsedError;
}
