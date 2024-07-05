import 'package:flutter/material.dart';
import 'package:flutter_udemy_tharwat2/news_app/widgets/category_card.dart';

import '../models/category_model.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  final List<CategoryModel> categories = const [
    CategoryModel(image: 'assets/images/news/business.avif', categoryName: 'business'),
    CategoryModel(image: 'assets/images/news/entertaiment.avif', categoryName: 'entertainment'),
    CategoryModel(image: 'assets/images/news/general.avif', categoryName: 'general'),
    CategoryModel(image: 'assets/images/news/health.avif', categoryName: 'health'),
    CategoryModel(image: 'assets/images/news/science.avif', categoryName: 'science'),
    CategoryModel(image: 'assets/images/news/sports.avif', categoryName: 'sports'),
    CategoryModel(image: 'assets/images/news/technology.jpeg', categoryName: 'technology'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        //itemCount: 10,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            category: categories[index],
          );
        },
      ),
    );
  }
}
