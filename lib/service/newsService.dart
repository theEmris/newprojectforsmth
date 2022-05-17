import 'package:dio/dio.dart';
import 'package:lastproject/models/newsModel.dart';

class NewsService {
  static Future<List<NewsModel>> getNews() async {
    Response res = await Dio().get("http://localhost:1337/api/todays?populate=*");
    List<NewsModel> posts =
        (res.data["data"] as List).map((e) => NewsModel.fromJson(e)).toList();
    return posts;
  }
}

void main(List<String> args) {
  Object hh = NewsService();
  NewsService.getNews();
}


