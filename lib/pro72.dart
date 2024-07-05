import 'package:flutter/material.dart';

void main() {
  runApp(const HelloWorldApp());
}

class HelloWorldApp extends StatelessWidget {
  const HelloWorldApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: (){},),
        appBar: AppBar(
          title: const Text('my first app'),
        ),
        body: const Center(
          child: Text('hello world'),
        ),
      ),
    );
  }
}