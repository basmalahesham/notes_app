import 'package:dio/dio.dart';
import 'package:flutter_udemy_tharwat2/news_app/models/article_model.dart';

class NewService {
  /*final dio = Dio();

  void getHttp() async {
    final response = await dio.get('https://dart.dev');
    print(response);
  }*/

  //final Dio dio;  = final dio = Dio();

  /*final Dio dio;
  NewService(this.dio);

  void getGeneralNews() async {
    final response = await dio.get('https://newsapi.org/v2/everything?q=apple&from=2024-01-21&to=2024-01-21&sortBy=popularity&apiKey=fa8b144e12144c6d9ebdb47010053bf5');
    print(response);
  }

  void getGSportNews() async {
    final response = await dio.get('https://newsapi.org/v2/everything?q=apple&from=2024-01-21&to=2024-01-21&sortBy=popularity&apiKey=fa8b144e12144c6d9ebdb47010053bf5');
    print(response);
  }*/

  final Dio dio;

  NewService(this.dio);

  /*getNews() async{
    var response = await dio.get('https://newsapi.org/v2/top-headlines?apiKey=fa8b144e12144c6d9ebdb47010053bf5&country=eg&category=general');
  }*/

  Future<List<ArticleModel>>  getNews({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=fa8b144e12144c6d9ebdb47010053bf5&category=$category');
      
      //var jsonData = response.data;
      Map<String, dynamic> jsonData = response.data;
      
      List<dynamic> articles = jsonData['articles'];
      //List<Map<String,dynamic>> articles = jsonData['articles'] as List<Map<String,dynamic>>;
      /*for (var article in articles){
        print(article);      // لوب بتلوب على الارتيكلز وتطبعلى كل ماب فيها على حدة
      }*/
      /*for (var article in articles){
        print(article['author']);   //   بتاعها اديه للماب دى keyلو عايز قيمة من جوا الماب دي هجيب ال
      }*/
      
      List<ArticleModel> articlesList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        /*ArticleModel(
          //source: Source(id: article['source']['id'], name: article['source']['name']),
          image: article['urlToImage'],
          title: article['title'],
          subTitle: article['description'],
        );*/
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
