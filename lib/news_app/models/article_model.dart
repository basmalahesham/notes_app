class ArticleModel {
/*
   String? image;
   String? title;
   String? subTitle;*/
  final String? image;
  final String title;
  final String? subTitle;
  //final Source source;

  //ArticleModel({required this.source, required this.image, required this.title, required this.subTitle});

  ArticleModel(
      {required this.image, required this.title, required this.subTitle});

  /*ArticleModel.fromJson(json) {
    this.image = json['urlToImage'],
    this.title = json['title'];
    this.subTitle = json['description'],
  }*/

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      //source: Source(id: article['source']['id'], name: article['source']['name']),
      image: json['urlToImage'],
      title: json['title'],
      subTitle: json['description'],
    );
  }
  //ArticleModel.fromJson(Map<String, dynamic> json){}
}

/*
class Source{
  final String id;
  final String name;

  Source({required this.id, required this.name});
}*/
