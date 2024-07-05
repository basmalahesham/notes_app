import 'package:flutter/material.dart';
import 'package:flutter_udemy_tharwat2/language_learning_app/components/list_item.dart';

import '../models/Item.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  /*final Number one = const Number(
      image: 'assets/images/numbers/number_one.png',
      jpName: 'ichi',
      enName: 'one');*/

  final List<ItemModel> numbers = const [
    ItemModel(
        image: 'assets/images/colors/color_black.png',
        jpName: 'Kuro',
        enName: 'black',
        sound: 'sounds/colors/black.wav'),
    ItemModel(
        image: 'assets/images/colors/color_brown.png',
        jpName: 'Chairo',
        enName: 'brown',
        sound: 'sounds/colors/brown.wav'),
    ItemModel(
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'Kin',
        enName: 'dusty yellow',
        sound: 'sounds/colors/dusty yellow.wav'),
    ItemModel(
        image: 'assets/images/colors/color_gray.png',
        jpName: 'Gin',
        enName: 'gray',
        sound: 'sounds/colors/gray.wav'),
    ItemModel(
        image: 'assets/images/colors/color_green.png',
        jpName: 'Midori',
        enName: 'green',
        sound: 'sounds/colors/green.wav'),
    ItemModel(
        image: 'assets/images/colors/color_red.png',
        jpName: 'Aka',
        enName: 'red',
        sound: 'sounds/colors/red.wav'),
    ItemModel(
        image: 'assets/images/colors/color_white.png',
        jpName: 'Shiro',
        enName: 'white',
        sound: 'sounds/colors/white.wav'),
    ItemModel(
        image: 'assets/images/colors/yellow.png',
        jpName: 'KI Iro',
        enName: 'yellow',
        sound: 'sounds/colors/yellow.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Colors'),
          backgroundColor: const Color(0xff46322B),
        ),
        body: ListView.builder(
            itemCount: numbers.length,
            itemBuilder: (context, index) {
              return ListItem(
                color: const Color(0xff79359F),
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