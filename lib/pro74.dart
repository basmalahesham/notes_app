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
        body: Center(
          child: Container(
            height: 60,
            width: 100,
            color: Colors.blue,
            child: const Center(child: Text('hello world ')),
          ),
        ),
      ),
    );
  }
}