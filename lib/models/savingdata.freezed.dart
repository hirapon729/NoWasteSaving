// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'savingdata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SavingData _$SavingDataFromJson(Map<String, dynamic> json) {
  return _SavingData.fromJson(json);
}

/// @nodoc
mixin _$SavingData {
//ID
  String? get id => throw _privateConstructorUsedError; //貯金した額
  int? get money => throw _privateConstructorUsedError; //無駄使いしなかった内容
  String? get text => throw _privateConstructorUsedError; //貯金日
  int? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SavingDataCopyWith<SavingData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavingDataCopyWith<$Res> {
  factory $SavingDataCopyWith(
          SavingData value, $Res Function(SavingData) then) =
      _$SavingDataCopyWithImpl<$Res, SavingData>;
  @useResult
  $Res call({String? id, int? money, String? text, int? date});
}

/// @nodoc
class _$SavingDataCopyWithImpl<$Res, $Val extends SavingData>
    implements $SavingDataCopyWith<$Res> {
  _$SavingDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? money = freezed,
    Object? text = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      money: freezed == money
          ? _value.money
          : money // ignore: cast_nullable_to_non_nullable
              as int?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SavingDataCopyWith<$Res>
    implements $SavingDataCopyWith<$Res> {
  factory _$$_SavingDataCopyWith(
          _$_SavingData value, $Res Function(_$_SavingData) then) =
      __$$_SavingDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, int? money, String? text, int? date});
}

/// @nodoc
class __$$_SavingDataCopyWithImpl<$Res>
    extends _$SavingDataCopyWithImpl<$Res, _$_SavingData>
    implements _$$_SavingDataCopyWith<$Res> {
  __$$_SavingDataCopyWithImpl(
      _$_SavingData _value, $Res Function(_$_SavingData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? money = freezed,
    Object? text = freezed,
    Object? date = freezed,
  }) {
    return _then(_$_SavingData(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      money: freezed == money
          ? _value.money
          : money // ignore: cast_nullable_to_non_nullable
              as int?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SavingData extends _SavingData with DiagnosticableTreeMixin {
  const _$_SavingData({this.id, this.money = 0, this.text = '', this.date = 0})
      : super._();

  factory _$_SavingData.fromJson(Map<String, dynamic> json) =>
      _$$_SavingDataFromJson(json);

//ID
  @override
  final String? id;
//貯金した額
  @override
  @JsonKey()
  final int? money;
//無駄使いしなかった内容
  @override
  @JsonKey()
  final String? text;
//貯金日
  @override
  @JsonKey()
  final int? date;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SavingData(id: $id, money: $money, text: $text, date: $date)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SavingData'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('money', money))
      ..add(DiagnosticsProperty('text', text))
      ..add(DiagnosticsProperty('date', date));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SavingData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.money, money) || other.money == money) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, money, text, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SavingDataCopyWith<_$_SavingData> get copyWith =>
      __$$_SavingDataCopyWithImpl<_$_SavingData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SavingDataToJson(
      this,
    );
  }
}

abstract class _SavingData extends SavingData {
  const factory _SavingData(
      {final String? id,
      final int? money,
      final String? text,
      final int? date}) = _$_SavingData;
  const _SavingData._() : super._();

  factory _SavingData.fromJson(Map<String, dynamic> json) =
      _$_SavingData.fromJson;

  @override //ID
  String? get id;
  @override //貯金した額
  int? get money;
  @override //無駄使いしなかった内容
  String? get text;
  @override //貯金日
  int? get date;
  @override
  @JsonKey(ignore: true)
  _$$_SavingDataCopyWith<_$_SavingData> get copyWith =>
      throw _privateConstructorUsedError;
}
