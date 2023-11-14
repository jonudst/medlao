import 'package:get/get.dart';

import 'blood_stock_controller.dart';

class BloodStockBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BloodStockController());
  }
}
