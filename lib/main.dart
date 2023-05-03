import 'package:flutter/material.dart';
import 'package:reto_s5/pages/home_page.dart';


void main() {
  runApp(const ListApp());
}

class ListApp extends StatelessWidget {
  const ListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Top Series App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: const MyHomePage(),
    );
  }
}
