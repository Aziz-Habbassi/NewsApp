import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:news_app/models/article_model.dart';

class Getnews {
  Future<List<ArticleModel>> getnews(String categorie) async {
    await dotenv.load(fileName: ".env");
    final Response response = await Dio().get(
      "https://newsapi.org/v2/top-headlines?country=us&category=$categorie&apiKey=${dotenv.env["APIKEY"]}",
    );
    Map<String, dynamic> data = response.data;
    List<ArticleModel> articles = [];
    for (var article in data["articles"]) {
      articles.add(
        ArticleModel(
          image: article["urlToImage"],
          title: article["title"],
          description: article["description"],
        ),
      );
    }
    return articles;
  }
}
