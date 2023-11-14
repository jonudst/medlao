import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/use_case/use_case.dart';
import '../repository/blood_stock_repository.dart';

part 'get_blood_stocks_use_case.freezed.dart';
part 'get_blood_stocks_use_case.g.dart';

@lazySingleton
class GetBloodStocksUseCase extends UseCase<List<String>, GetBloodStocksParam> {
  final BloodStockRepository _repo;
  GetBloodStocksUseCase(this._repo);
  @override
  Future<Either<Failure, List<String>>> call(GetBloodStocksParam params) => _repo.getBloodStocks(params);
}

@freezed
class GetBloodStocksParam with _$GetBloodStocksParam {
  const factory GetBloodStocksParam() = _GetBloodStocksParam;
  factory GetBloodStocksParam.fromJson(Map<String, dynamic> json) => _$GetBloodStocksParamFromJson(json);
}
