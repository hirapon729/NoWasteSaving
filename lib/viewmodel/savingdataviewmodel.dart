import 'package:chokin/models/result.dart';
import 'package:chokin/repository/repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/savingdata.dart';
import '../repository/savingdata_repository_impl.dart';

final SavingDataProvider = StateNotifierProvider<SavingDataNotifier, SavingData>((ref){
  return SavingDataNotifier(ref.watch(SavingDataRepositoryProvider));
});

class SavingDataNotifier extends StateNotifier<SavingData> {
  SavingDataNotifier(this.savingdataRepository) : super (const SavingData());

  final Repository<SavingData> savingdataRepository;

  Future<Result<int>> save(SavingData savingdata) async {
    final result = await savingdataRepository.save(savingdata);
    return result.when(
        success: (data) {
        return Result.success(data: data);
      }, 
        failure: (error){
          return Result.failure(error:error);
          
        }
      );
  }
  
  Future<Result<int>> update(SavingData savingdata) async {
    final result = await savingdataRepository.update(savingdata);
    return result.when(
        success: (data) {
        return Result.success(data: data);
      }, 
        failure: (error){
          return Result.failure(error:error);
          
        }
      );
  }

  Future<Result<int>> delete(SavingData savingData) async {
    final result = await savingdataRepository.delete(savingData);
        return result.when(
        success: (data) {
        return Result.success(data: data);
      }, 
        failure: (error){
          return Result.failure(error:error);
          
        }
      );
  }
}