import 'package:flutter/material.dart';
import 'package:flutter_udemy_tharwat2/language_learning_app/models/Item.dart';

import 'item_info.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key, required this.item, required this.color});
  final ItemModel item;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          /*item.image == null
              ? SizedBox()
              : Container(
                  color: const Color(0xffFFF6DC),
                  child: Image.asset(item.image!)),*/
          Container(
              color: const Color(0xffFFF6DC),
              child: Image.asset(item.image!)),
         Expanded(child: ItemInfo(item: item)),
        ],
      ),
    );
  }
}


