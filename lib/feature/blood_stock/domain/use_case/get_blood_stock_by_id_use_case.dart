import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:medlao/feature/blood_stock/domain/repository/blood_stock_repository.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/use_case/use_case.dart';

part 'get_blood_stock_by_id_use_case.freezed.dart';
part 'get_blood_stock_by_id_use_case.g.dart';

@lazySingleton
class GetBloodStockByIdUseCase extends UseCase<String, GetBloodStockByIdParam> {
  final BloodStockRepository _repo;
  GetBloodStockByIdUseCase(this._repo);
  @override
  Future<Either<Failure, String>> call(GetBloodStockByIdParam params) => _repo.getBloodStockById(params);
}

@freezed
class GetBloodStockByIdParam with _$GetBloodStockByIdParam {
  const factory GetBloodStockByIdParam({
    @Default("") String id,
  }) = _GetBloodStockByIdParam;
  factory GetBloodStockByIdParam.fromJson(Map<String, dynamic> json) => _$GetBloodStockByIdParamFromJson(json);
}
