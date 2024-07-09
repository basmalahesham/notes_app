import 'package:flutter/material.dart';
import 'package:flutter_udemy_tharwat2/language_learning_app/screens/colors_page.dart';
import 'package:flutter_udemy_tharwat2/language_learning_app/screens/numbers_page.dart';
import 'package:flutter_udemy_tharwat2/language_learning_app/screens/phrases_page.dart';

import '../components/category_item.dart';
import 'family_members.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text('Toku'),
      ),
      body: Column(
        children: [
          Category(
            text: 'Numbers',
            color: const Color(0xffEF9235),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (BuildContext context) {
                  return const NumbersPage();
                }),
              );
            },
          ),
          Category(
            text: 'FamilyMembers',
            color: const Color(0xff558B37),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (BuildContext context) {
                  return const FamilyMembersPage();
                }),
              );
            },
          ),
          Category(
            text: 'Colors',
            color: const Color(0xff79359F),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (BuildContext context) {
                  return const ColorsPage();
                }),
              );
            },
          ),
          Category(
            text: 'phrases',
            color: const Color(0xff50ADC7),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (BuildContext context) {
                  return const PhrasesPage();
                }),
              );
            },
          ),
        ],
      ),
    );
  }
}
