import 'dart:math';

class News {
  final int imageId;
  final String title;
  final String description;

  News({required this.imageId, required this.title, required this.description});

  factory News.fromJson(Map<String, dynamic> json) {
    int imageId = Random().nextInt(20);
    return News(
      imageId: imageId,
      title: json['title'],
      description: json['body'],
    );
  }
}
