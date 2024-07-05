import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: (){},),
        appBar: AppBar(
          title: const Text('my first app'),
        ),
        body: const Center(
          child: Text('hello world'),
        ),
      ),
    ),
  );
}