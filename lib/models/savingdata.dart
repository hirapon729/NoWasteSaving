import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'savingdata.freezed.dart';
part 'savingdata.g.dart';

@freezed
class SavingData with _$SavingData {
  const factory SavingData({
    
    //ID
    String? id,

    //貯金した額
    @Default(0) int? money,

    //無駄使いしなかった内容
    @Default('') String? text,

    //貯金日
    @Default(0) int? date ,


  }) = _SavingData;

  const SavingData._();

  @override
  factory SavingData.fromJson(Map<String, dynamic> json) =>
    _$SavingDataFromJson(json);

  static String get tableName => 'SavingDatas';

  DateTime get dateTime => DateTime.fromMillisecondsSinceEpoch(date ?? 0);

  String get formatDate => DateFormat('yyyy-MM-dd').format(dateTime);

}