/*
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_udemy_tharwat2/news_app/models/article_model.dart';
import 'package:flutter_udemy_tharwat2/news_app/services/news_service.dart';
import 'package:flutter_udemy_tharwat2/news_app/widgets/news_tile.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({super.key});

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  List<ArticleModel> articles = [];
  bool isLoading = true;
  @override
  */
/*void initState() async {
    super.initState();
    articles = await NewService(Dio()).getNews();
  }*//*

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
    //NewService(Dio()).getNews();
    return isLoading
        ? SliverFillRemaining(child: Center(child: CircularProgressIndicator()))
        : SliverList(
            delegate: SliverChildBuilderDelegate(
            childCount: articles.length,
            (context, index) {
              return Padding(
                padding: EdgeInsets.only(bottom: 22.0),
                child: NewsTile(
                  articleModel: articles[index],
                ),
              );
            },
          ));
    */
/*SliverList(
        delegate: SliverChildBuilderDelegate(
          childCount: 10,
              (context, index) {
            return const Padding(
              padding: EdgeInsets.only(bottom: 22.0),
              child: NewsTile(),
            );
          },
        ));*//*

    */
/*ListView.builder(
      shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 22.0),
            child: NewsTile(),
          );
        });*//*

    */
/*Expanded(
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 22.0),
              child: NewsTile(),
            );
          }),
    );*//*

  }
}
*/

import 'package:flutter/material.dart';
import 'package:flutter_udemy_tharwat2/news_app/models/article_model.dart';
import 'package:flutter_udemy_tharwat2/news_app/widgets/news_tile.dart';

class NewsListView extends StatelessWidget {

  final List<ArticleModel> articles;
  const NewsListView({super.key, required this.articles});


  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
          childCount: articles.length,
              (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 22.0),
              child: NewsTile(
                articleModel: articles[index],
              ),
            );
          },
        ));
  }
}
