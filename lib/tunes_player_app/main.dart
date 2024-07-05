import 'package:flutter/material.dart';
import 'package:flutter_udemy_tharwat2/tunes_player_app/views/tune_view.dart';

void main() {
  runApp(const TunesApp());
}
class TunesApp extends StatelessWidget {
  const TunesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TuneView(),
    );
  }
}
