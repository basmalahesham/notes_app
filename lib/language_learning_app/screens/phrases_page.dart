import 'package:flutter/material.dart';

import '../components/phrase_item.dart';
import '../models/Item.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  /*final Number one = const Number(
      image: 'assets/images/numbers/number_one.png',
      jpName: 'ichi',
      enName: 'one');*/

  final List<ItemModel> phrases = const [
    ItemModel(
        jpName: 'Chichioya',
        enName: 'Are you coming',
        sound: 'sounds/phrases/are_you_coming.wav'),
    ItemModel(
        jpName: 'Kodoko suru koto o wasurenaide \n kudasai',
        enName: 'Dont forget to subscribe',
        sound: 'sounds/phrases/dont_forget_to_subscribe.wav'),
    ItemModel(
        jpName: 'Ojisan',
        enName: 'How are you feeling',
        sound: 'sounds/phrases/how_are_you_feeling.wav'),
    ItemModel(
        jpName: 'Hahaoya',
        enName: 'I love anime',
        sound: 'sounds/phrases/i_love_anime.wav'),
    ItemModel(
        jpName: 'Watashi wa puroguramingu \n ga daisukidesu',
        enName: 'I love programming',
        sound: 'sounds/phrases/i_love_programming.wav'),
    ItemModel(
        jpName: 'Nisan',
        enName: 'Programming is easy',
        sound: 'sounds/phrases/programming_is_easy.wav'),
    ItemModel(
        jpName: 'Ane',
        enName: 'What is your name',
        sound: 'sounds/phrases/what_is_your_name.wav'),
    ItemModel(
        jpName: 'Musuko',
        enName: 'Where are you going',
        sound: 'sounds/phrases/where_are_you_going.wav'),
    ItemModel(
        jpName: 'kyu',
        enName: 'Yes im coming',
        sound: 'sounds/phrases/yes_im_coming.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Phrases'),
          backgroundColor: const Color(0xff46322B),
        ),
        body: ListView.builder(
            itemCount: phrases.length,
            itemBuilder: (context, index) {
              return PhrasesItem(
                color: const Color(0xff50ADC7),
                item: phrases[index],
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
