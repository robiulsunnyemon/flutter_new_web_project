import 'package:flutter/material.dart';

import 'pages/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Robiul Sunny Emon',
      debugShowCheckedModeBanner: false,
      home:  MyHomePage(),
    );
  }
}
