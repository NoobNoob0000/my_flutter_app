import 'package:my_flutter_app/data/index.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class NewsRepo implements Repo {
  @override
  Future<List<News>> getNews() async {
    final newsList = <News>[];
    const url = 'https://jsonplaceholder.typicode.com/posts';

    final uri = Uri.parse(url);

    final res = await http.get(uri);
    final data = json.decode(res.body) as List;

    for (var json in data) {
      final news = News.fromJson(json);
      if (newsList.length < 20) {
        newsList.add(news);
      } else {
        break;
      }
    }
    await Future.delayed(const Duration(seconds: 3));
    return newsList;
  }
}
