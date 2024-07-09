import 'package:flutter/material.dart';

void main() {
  runApp(const BusniessCardApp());
}

class BusniessCardApp extends StatelessWidget {
  const BusniessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF2B475E),
        body: Column(
          children: [
            // ClipRRect(
            //   borderRadius: BorderRadius.circular(999),
            //   child: Image(
            //     image: AssetImage(
            //         'assets/images/2022-01-19_06-29-41-33803e677e5b58cfcf6c40e60220beb3.png'),
            //     width: 200,
            //     fit: BoxFit.cover,
            //   ),
            // ),
            CircleAvatar(
              radius: 93,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 90,
                backgroundImage: AssetImage(
                    'assets/images/2022-01-19_06-29-41-33803e677e5b58cfcf6c40e60220beb3.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
