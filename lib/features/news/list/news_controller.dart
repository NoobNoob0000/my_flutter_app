import 'package:my_flutter_app/data/index.dart';

class NewsController {
  final Repo _repo;

  NewsController(this._repo);

  Future<List<News>> getNews() {
    return _repo.getNews();
  }
}
