/*import 'dart:convert';

import 'package:flutter_udemy_tharwat2/store_app/models/product_model.dart';
import 'package:http/http.dart' as http;

class CategoriesService {
  Future<List<ProductModel>> getCategoriesProducts(
      {required String categoryName}) async {
    http.Response response = await http.get(
        Uri.parse('https://fakestoreapi.com/products/category/$categoryName'));
    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);

      List<ProductModel> productsList = [];
      for (int i = 0; i < data.length; i++) {
        productsList.add(ProductModel.fromJson(data[i]));
      }
      return productsList;
    }else{
      throw Exception('there is a problem with status code ${response.statusCode}');
    }
  }
}*/

import 'package:flutter_udemy_tharwat2/store_app/helper/api.dart';
import 'package:flutter_udemy_tharwat2/store_app/models/product_model.dart';

class CategoriesService {
  Future<List<ProductModel>> getCategoriesProducts(
      {required String categoryName}) async {
   List<dynamic> data = await Api().get(url: 'https://fakestoreapi.com/products/category/$categoryName');
   

      List<ProductModel> productsList = [];
      for (int i = 0; i < data.length; i++) {
        productsList.add(ProductModel.fromJson(data[i]));
      }
      return productsList;
    }
}

