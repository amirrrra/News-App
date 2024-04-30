import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio = Dio();
  NewsService();

  Future<List<ArticleModel>> getNews({
    required String category,
  }) async {
    try {
      Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?apiKey=26fe921a3e394fd1bc0143b76e098c8f&country=us&category=$category',
      );

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articlesList = [];

      for (var e in articles) {
        ArticleModel articleModel = ArticleModel.fromjson(e);
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
