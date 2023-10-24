import 'package:atha_wearing/pages/API-GOLANG/get.dart';
import 'package:atha_wearing/pages/API-GOLANG/post_page.dart';
import 'package:atha_wearing/pages/SWAGGER/get_swagger.dart';
import 'package:atha_wearing/pages/SWAGGER/post_swagger.dart';
import 'package:atha_wearing/pages/SWAGGER/tampil_post_page.dart';
import 'package:atha_wearing/pages/home/home_page.dart';
import 'package:atha_wearing/pages/movie/home_movie_page.dart';
import 'package:atha_wearing/pages/movie/search_movie_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Wearing News',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home:SearchPage(),
    );
  }
}
