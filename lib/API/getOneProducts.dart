import 'package:http/http.dart' as http;

class getoneProductsAPI {
  getoneProducts(int index) async {
    try {
      var response =
          await http.get(Uri.parse('https://fakestoreapi.com/products/$index'));
      if (response.statusCode == 200) {
        print("true");
      } else {
        return throw Exception("Failed to load product");
      }
    } catch (e) {
      print(e);
      return throw Exception("f");
    }
  }
}
