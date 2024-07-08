import 'package:flutter/material.dart';
import 'package:flutter_udemy_tharwat2/news_app/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});

  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.network(
            articleModel.image ?? 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPhI4anqpWmhDuEi1Qze_8bALfypL96KzPLQ&usqp=CAU',
            //'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPhI4anqpWmhDuEi1Qze_8bALfypL96KzPLQ&usqp=CAU',
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          articleModel.title,
          //'Large Title should be places in this place Large Title should be places in this place sdfadsf',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
         Text(
          articleModel.subTitle ?? '',
          //'Large Title should be places in this place Large Title should be places in this place',
          maxLines: 2,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}