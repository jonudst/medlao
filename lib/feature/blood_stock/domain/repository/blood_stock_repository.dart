import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../use_case/get_blood_stock_by_id_use_case.dart';
import '../use_case/get_blood_stocks_use_case.dart';

abstract class BloodStockRepository {
  Future<Either<Failure, List<String>>> getBloodStocks(GetBloodStocksParam param);
  Future<Either<Failure, String>> getBloodStockById(GetBloodStockByIdParam param);
}
