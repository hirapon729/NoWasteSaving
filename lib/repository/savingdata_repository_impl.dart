import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../dbcontroller.dart';
import '../models/savingdata.dart';
import '../models/result.dart';
import 'repository.dart';

final SavingDataRepositoryProvider =
    Provider<Repository<SavingData>>((ref) => SavingDataRepositoryImpl());

class SavingDataRepositoryImpl implements Repository<SavingData> {
  SavingDataRepositoryImpl();

  /// [where]は id = ? のような形式にする
  @override
  Future<Result<List<SavingData>>> fetch({
    String? where,
    List? whereArgs,
  }) async {
    return Result.guardFuture(() async {
      final result = await DbController.db.get(
        tableName: SavingData.tableName,
        where: where,
        whereArgs: whereArgs,
      );
      return result.map((e) => SavingData.fromJson(e)).toList();
    });
  }

  @override
  Future<Result<int>> save(SavingData todo) async {
    return Result.guardFuture(
      () async => await DbController.db
          .create(tableName: SavingData.tableName, json: todo.toJson()),
    );
  }

  @override
  Future<Result<int>> update(SavingData todo) async {
    return Result.guardFuture(
      () async => await DbController.db.update(
        tableName: SavingData.tableName,
        json: todo.toJson(),
        primaryKey: todo.id!,
      ),
    );
  }

  @override
  Future<Result<int>> delete(SavingData todo) async {
    return Result.guardFuture(
      () async => await DbController.db.delete(
        tableName: SavingData.tableName,
        primaryKey: todo.id!,
      ),
    );
  }
}