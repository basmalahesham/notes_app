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
        body: Column(
          children: [
            const Text(
              'Team A',
              style: TextStyle(
                fontSize: 32,
              ),
            ),
            const Text(
              '0',
              style: TextStyle(
                fontSize: 150,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                maximumSize: const Size(180, 80),
              ),
              onPressed: () {},
              child: const Text(
                'Add 1 point',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                maximumSize: const Size(180, 80),
              ),
              onPressed: () {},
              child: const Text(
                'Add 2 point',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                maximumSize: const Size(180, 80),
              ),
              onPressed: () {},
              child: const Text(
                'Add 3 point',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
