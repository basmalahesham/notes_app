/*import 'dart:convert';

import 'package:http/http.dart' as http;

class AllCategoriesService {
  Future<List<dynamic>> getAllCategories() async {
    http.Response response = await http
        .get(Uri.parse('https://fakestoreapi.com/products/categories'));
    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      return data;
    }else{
      throw Exception('there is a problem with status code ${response.statusCode}');
    }
  }
}*/


import 'package:flutter_udemy_tharwat2/store_app/helper/api.dart';
class AllCategoriesService {
  Future<List<dynamic>> getAllCategories() async {
    
    
      List<dynamic> data = await Api().get(url: 'https://fakestoreapi.com/products/categories');
      return data;
    }
}
