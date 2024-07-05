import 'package:flutter/material.dart';

void main() {
  runApp(const pointsCounter());
}

class pointsCounter extends StatelessWidget {
  const pointsCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('points Counter'),
        ),
        body: const Column(
          children: [
            Text(
              'Team A',
              style: TextStyle(
                fontSize: 32,
              ),
            ),
            Text(
              '0',
              style: TextStyle(
                fontSize: 150,
              ),
            ),
          ],
        ),
      ),
    );
  }
}