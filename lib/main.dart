import 'package:flutter/material.dart';
import 'package:flutter_application_2/home2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key,});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mytitle",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("MyApp"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Home(),
      ),
    );
    }
}