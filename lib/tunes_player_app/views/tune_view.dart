import 'package:flutter/material.dart';
import 'package:flutter_udemy_tharwat2/tunes_player_app/models/tune_model.dart';
import 'package:flutter_udemy_tharwat2/tunes_player_app/widgets/tune_item.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});
/*
  final List<Color> tuneColors = const [
    Color(0xffF44336),
    Color(0xffF89800),
    Color(0xffFEEB3B),
    Color(0xff4CAF50),
    Color(0xff2F9688),
    Color(0xff2896F3),
    Color(0xff9C27B0),
  ];
*/
  final List<TuneModel> tunes = const [
    TuneModel(color: Color(0xffF44336), sound: 'sounds/tune_sounds/note1.wav'),
    TuneModel(color: Color(0xffF89800), sound: 'sounds/tune_sounds/note2.wav'),
    TuneModel(color: Color(0xffFEEB3B), sound: 'sounds/tune_sounds/note3.wav'),
    TuneModel(color: Color(0xff4CAF50), sound: 'sounds/tune_sounds/note4.wav'),
    TuneModel(color: Color(0xff2F9688), sound: 'sounds/tune_sounds/note5.wav'),
    TuneModel(color: Color(0xff2896F3), sound: 'sounds/tune_sounds/note6.wav'),
    TuneModel(color: Color(0xff9C27B0), sound: 'sounds/tune_sounds/note7.wav'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Flutter Tune',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xff253238),
        elevation: 0,
      ),
      body: Column(
        children: tunes
            .map(
              (e) => TuneItem(tune: e),
            )
            .toList(),
        //getTuneItems(),
        /*[
          TuneItem(color: Color(0xffF44336)),
          TuneItem(color: Color(0xffF89800)),
          TuneItem(color: Color(0xffFEEB3B)),
          TuneItem(color: Color(0xff4CAF50)),
          TuneItem(color: Color(0xff2F9688)),
          TuneItem(color: Color(0xff2896F3)),
          TuneItem(color: Color(0xff9C27B0)),
        ]*/
      ),
    );
  }
  /*List<TuneItem> getTuneItems(){
    List<TuneItem> items = [];

    for (var color in tuneColors) {
      items.add(TuneItem(color: color));
    }
    return items;
  }*/
}
