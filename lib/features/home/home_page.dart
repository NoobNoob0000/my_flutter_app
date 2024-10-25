import 'package:flutter/material.dart';
import 'package:my_flutter_app/features/index.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => AboutPage(),
                ),
              );
            },
            icon: Icon(Icons.info_outline),
          ),
        ],
      ),
      body: ListNews(),
    );
  }
}
