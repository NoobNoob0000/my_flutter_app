import 'package:flutter/material.dart';
import 'package:my_flutter_app/core/index.dart';
import 'package:my_flutter_app/data/index.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.news});

  final News news;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          news.title,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                  'https://loremflickr.com/200/200?random=${news.imageId}'),
            ),
            Text(
              news.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              news.description,
              style: AppTextStyle.content(context),
            ),
          ],
        ),
      ),
    );
  }
}
