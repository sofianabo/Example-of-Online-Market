import 'package:get/get.dart';
import 'package:getx/controller.dart/getAllProductsController.dart';

class productBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(getAllProductsController());
  }
}
