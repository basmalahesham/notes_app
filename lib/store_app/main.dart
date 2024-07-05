import 'package:flutter/material.dart';
import 'package:flutter_udemy_tharwat2/store_app/screens/home_page.dart';
import 'package:flutter_udemy_tharwat2/store_app/screens/update_product.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.id : (context) => HomePage(),
        UpdateProductPage.id : (context) => UpdateProductPage(),
      },
      initialRoute: HomePage.id,
    );
  }
}


