import 'package:flutter/material.dart';
import 'package:flutter_udemy_tharwat2/news_app/views/home_view.dart';

void main(){
  runApp(const NewsApp());
}
class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}

// api key
// fa8b144e12144c6d9ebdb47010053bf5
