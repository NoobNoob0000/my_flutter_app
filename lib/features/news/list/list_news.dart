import 'package:flutter/material.dart';
import 'package:my_flutter_app/data/index.dart';
import 'package:my_flutter_app/features/index.dart';
import 'package:my_flutter_app/features/news/list/news_controller.dart';
import 'package:my_flutter_app/features/news/list/shimmer_list_tile.dart';

class ListNews extends StatefulWidget {
  const ListNews({super.key});

  @override
  State<ListNews> createState() => _ListNewsState();
}

class _ListNewsState extends State<ListNews> {
  final _controller = NewsController(NewsRepo());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 10,
        ),
        child: FutureBuilder(
          future: _controller.getNews(),
          builder: (context, snapshot) {
            final newsList = snapshot.data;

            if (snapshot.connectionState == ConnectionState.waiting ||
                newsList == null) {
              return ListView.builder(
                itemCount: 5, // Display at least 5 shimmer tiles
                itemBuilder: (context, index) {
                  return const ShimmerListTile();
                },
              );
            }

            if (snapshot.hasError) {
              return Center(
                child: Text('Error: ${snapshot.error}'),
              );
            }

            return ListView.builder(
              itemCount: newsList.length,
              itemBuilder: (context, index) {
                var news = newsList[index];
                return Card(
                  clipBehavior: Clip.antiAlias,
                  child: ListTile(
                    trailing: Image.network(
                      'https://loremflickr.com/200/200?random=${news.imageId}',
                      height: 100,
                      width: 100,
                    ),
                    title: Text(news.title),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(news: news),
                        ),
                      );
                    },
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
