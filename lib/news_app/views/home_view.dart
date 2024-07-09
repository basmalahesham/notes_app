import 'package:flutter/material.dart';
import 'package:flutter_udemy_tharwat2/news_app/widgets/categories_list_view.dart';

import '../widgets/news_list_view_builder.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Cloud',
              style:
                  TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: CategoriesListView()),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 32,
              ),
            ),
            NewsListViewBuilder(category: 'general',),
            //NewsListView(),
            //SliverToBoxAdapter(child: NewsListView()),
          ],
        ),
        /*child: Column(
          children: [
            CategoriesListView(),
            SizedBox(
              height: 32,
            ),
            NewsListView(),
          ],
        ),*/
      ),
    );
  }
}
