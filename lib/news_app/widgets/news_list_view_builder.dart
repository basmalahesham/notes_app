/*import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../models/article_model.dart';
import '../services/news_service.dart';
import 'news_list_view.dart';

class NewListViewBuilder extends StatefulWidget {
  const NewListViewBuilder({
    super.key,
  });

  @override
  State<NewListViewBuilder> createState() => _NewListViewBuilderState();
}

class _NewListViewBuilderState extends State<NewListViewBuilder> {
  List<ArticleModel> articles = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articles = await NewService(Dio()).getNews();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? SliverFillRemaining(child: Center(child: CircularProgressIndicator()))
        : articles.isNotEmpty ? NewsListView(
            articles: articles,
          ) : SliverFillRemaining(child: Center(child: Text('oops there was an error, try later')),);
  }
}*/

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_udemy_tharwat2/news_app/models/article_model.dart';
import '../services/news_service.dart';
import 'news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key, required this.category,
  });
  final String category;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {

  var future;
  @override
  void initState() {
    super.initState();
    future = NewService(Dio()).getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(
            articles: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return const SliverFillRemaining(
            child: Center(
              child: Text('oops there was an error, try later'),
            ),
          );
        } else {
          return const SliverFillRemaining(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
