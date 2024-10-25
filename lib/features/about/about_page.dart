import 'package:flutter/material.dart';
import 'package:my_flutter_app/core/index.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'MyFlutterApp help you get latest news.',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'Back to Home',
                style: AppTextStyle.buttonText(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
