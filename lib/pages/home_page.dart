import 'package:flutter/material.dart';
import 'package:reto_s5/pages/widget/list_pages.dart';


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child:  Text('Top  Series')),
      ),
      body: const ListPages()
    );
  }
}