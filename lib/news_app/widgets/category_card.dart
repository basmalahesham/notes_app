import 'package:flutter/material.dart';
import 'package:flutter_udemy_tharwat2/news_app/views/category_view.dart';

import '../models/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});

  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return CategoryView(
            category: category.categoryName,
          );
        },),);
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: Container(
          height: 85,
          width: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image:  DecorationImage(
                image: AssetImage(category.image), fit: BoxFit.fill),
          ),
          child:  Center(
            child: Text(
              category.categoryName,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
