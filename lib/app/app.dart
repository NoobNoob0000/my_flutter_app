import 'package:flutter/material.dart';
import 'package:my_flutter_app/features/index.dart';

import '../core/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Flutter App',
      theme: AppTheme().theme(),
      home: HomePage(),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => AboutPage(),
      //   '/main': (context) => HomePage(),
      //   '/details': (context) => const DetailPage(),
      // },
    );
  }
}
