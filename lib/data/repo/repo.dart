import 'package:my_flutter_app/data/index.dart';

abstract class Repo {
  Future<List<News>> getNews();
}
