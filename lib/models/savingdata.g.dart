// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'savingdata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SavingData _$$_SavingDataFromJson(Map<String, dynamic> json) =>
    _$_SavingData(
      id: json['id'] as String?,
      money: json['money'] as int? ?? 0,
      text: json['text'] as String? ?? '',
      date: json['date'] as int? ?? 0,
    );

Map<String, dynamic> _$$_SavingDataToJson(_$_SavingData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'money': instance.money,
      'text': instance.text,
      'date': instance.date,
    };
