import 'package:flutter/material.dart';

void main() {
  runApp(const TokuApp());
}

class TokuApp extends StatelessWidget {
  const TokuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xffFEF6DB),
        appBar: AppBar(
          backgroundColor: const Color(0xff46322B),
          title: const Text('Toku'),
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 24),
              alignment: Alignment.centerLeft,
              height: 65,
              width: double.infinity,
              color: const Color(0xffEF9235),
              child: const Text(
                'Members',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 24),
              alignment: Alignment.centerLeft,
              height: 65,
              width: double.infinity,
              color: const Color(0xff558B37),
              child: const Text(
                'FamilyMembers',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 24),
              alignment: Alignment.centerLeft,
              height: 65,
              width: double.infinity,
              color: const Color(0xff79359F),
              child: const Text(
                'Colors',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 24),
              alignment: Alignment.centerLeft,
              height: 65,
              width: double.infinity,
              color: const Color(0xff50ADC7),
              child: const Text(
                'Phrases',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


