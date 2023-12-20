import 'package:flutter/material.dart';
import 'package:first_project/Views/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter Learn",
        theme: ThemeData(primarySwatch: Colors.yellow),
        home: HomeView());
  }
}
