import 'package:flutter/material.dart';
import 'package:flutter_udemy_tharwat2/language_learning_app/components/list_item.dart';

import '../models/Item.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  /*final Number one = const Number(
      image: 'assets/images/numbers/number_one.png',
      jpName: 'ichi',
      enName: 'one');*/

  final List<ItemModel> numbers = const [
    ItemModel(
        image: 'assets/images/numbers/number_one.png',
        jpName: 'ichi',
        enName: 'one',
        sound: 'sounds/numbers/number_one_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_two.png',
        jpName: 'Ni',
        enName: 'two',
        sound: 'sounds/numbers/number_two_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_three.png',
        jpName: 'san',
        enName: 'three',
        sound: 'sounds/numbers/number_three_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_four.png',
        jpName: 'yon',
        enName: 'four',
        sound: 'sounds/numbers/number_four_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_five.png',
        jpName: 'go',
        enName: 'five',
        sound: 'sounds/numbers/number_five_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_six.png',
        jpName: 'roku',
        enName: 'six',
        sound: 'sounds/numbers/number_six_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_seven.png',
        jpName: 'nana',
        enName: 'seven',
        sound: 'sounds/numbers/number_seven_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_eight.png',
        jpName: 'hachi',
        enName: 'eight',
        sound: 'sounds/numbers/number_eight_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_nine.png',
        jpName: 'kyu',
        enName: 'nine',
        sound: 'sounds/numbers/number_nine_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_ten.png',
        jpName: 'ju',
        enName: 'ten',
        sound: 'sounds/numbers/number_ten_sound.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Numbers'),
          backgroundColor: const Color(0xff46322B),
        ),
        body: ListView.builder(
            itemCount: numbers.length,
            itemBuilder: (context, index) {
              return ListItem(
                color: const Color(0xffEF9235),
                item: numbers[index],
              );
            })
        /*ListView(
        children:
        getList(numbers)
        */ /*[
          ItemNumber(number: numbers[0]),
          ItemNumber(number: numbers[1]),
          ItemNumber(number: numbers[2]),
          ItemNumber(number: numbers[3]),
          ItemNumber(number: numbers[4]),
          ItemNumber(number: numbers[5]),
          ItemNumber(number: numbers[6]),
          ItemNumber(number: numbers[7]),
          ItemNumber(number: numbers[8]),
          ItemNumber(number: numbers[9]),
        ]*/ /*,
      ),*/
        );
  }

  /*List<Widget> getList(List<Number> numbers){
    List<Widget> itemsList = [];
    for(int i=0; i<numbers.length; i++){
      itemsList.add(ItemNumber(number: numbers[i]));
    }
    return itemsList;
  }*/
}
