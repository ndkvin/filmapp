import 'package:filmapp/pages/detail_page.dart';
import 'package:filmapp/pages/home_page.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Film App',
      theme: ThemeData(scaffoldBackgroundColor: const Color(0XFF1B1E25)),
      home: const DetailPage(),
    );
  }
}