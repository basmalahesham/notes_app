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
          body: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 100,
                color: Colors.blue,
                child: const Center(child: Text('hello world '),
                ),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
                child: const Center(child: Text('hello world ')),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
                child: const Center(child: Text('hello world ')),
              ),
            ],
          )
      ),
    );
  }
}