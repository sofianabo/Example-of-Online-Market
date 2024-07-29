import 'package:get/get.dart';
import 'package:getx/API/getAllProductsAPI.dart';
import 'package:getx/Model/ProductsModel.dart';

class getAllProductsController extends GetxController {
  var productsList = <ProductsModel>[].obs;
  var isloading = true.obs;
  @override
  void onInit() async {
    getProducts();
    super.onInit();
  }

  void getProducts() async {
    var products = await getAllProductsAPI.getAllProducts();
    try {
      isloading(true);
      if (products.isNotEmpty) {
        productsList.addAll(products);
      }
    } finally {
      isloading(false);
    }
  }
}
