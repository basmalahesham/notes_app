import 'package:flutter/material.dart';
import 'package:flutter_udemy_tharwat2/language_learning_app/components/list_item.dart';

import '../models/Item.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});

  /*final Number one = const Number(
      image: 'assets/images/numbers/number_one.png',
      jpName: 'ichi',
      enName: 'one');*/

  final List<ItemModel> numbers = const [
    ItemModel(
        image: 'assets/images/family_members/family_father.png',
        jpName: 'Chichioya',
        enName: 'father',
        sound: 'sounds/family_members/father.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'Musume',
        enName: 'daughter',
        sound: 'sounds/family_members/daughter.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'Ojisan',
        enName: 'grandfather',
        sound: 'sounds/family_members/grand father.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'Hahaoya',
        enName: 'mother',
        sound: 'sounds/family_members/mother.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'Sobo',
        enName: 'grandmother',
        sound: 'sounds/family_members/grand mother.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'Nisan',
        enName: 'older brother',
        sound: 'sounds/family_members/older bother.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'Ane',
        enName: 'older sister',
        sound: 'sounds/family_members/older sister.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_son.png',
        jpName: 'Musuko',
        enName: 'son',
        sound: 'sounds/family_members/son.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'kyu',
        enName: 'younger brohter',
        sound: 'sounds/family_members/younger brohter.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'ju',
        enName: 'younger sister',
        sound: 'sounds/family_members/younger sister.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Family Members'),
          backgroundColor: const Color(0xff46322B),
        ),
        body: ListView.builder(
            itemCount: numbers.length,
            itemBuilder: (context, index) {
              return ListItem(
                color: const Color(0xff558B37),
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
