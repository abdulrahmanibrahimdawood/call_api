import 'dart:convert';

import 'package:api_call/models/product_model.dart';
import 'package:http/http.dart' as http;

class ProductRepo {
  getProductData() async {
    var url = Uri.https('fakestoreapi.com', 'products');
    var response = await http.get(url);
    try {
      if (response.statusCode == 200) {
        final List<dynamic> list = jsonDecode(response.body);
        return list.map((json) => ProductModel.fromMap(json)).toList();
      } else {
        throw Exception('Failed to load data');
      }
    } on Exception catch (e) {
      throw Exception(e.toString());
    }
  }
}
