import 'package:flutter/material.dart';
import 'placelist.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Groceries Store',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Groceries Store"),
        ),
        body: GroceriesList(),
      ),
    );
  }
}
