import 'package:audioplayers/audioplayers.dart';

class ItemModel {
  final String? image;
  //final String image;
  final String jpName;
  final String enName;
  final String sound;

/*
  const ItemModel({required this.image, required this.jpName, required this.enName, required this.sound});
*/

  const ItemModel(
      {this.image,
      required this.jpName,
      required this.enName,
      required this.sound});

  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}

/*class Number {
  final String image;
  final String jpName;
  final String enName;
  final String sound;

  const Number(
      {required this.image, required this.jpName, required this.enName, required this.sound});
}*/

/*
class FamilyMember{
  final String image;
  final String jpName;
  final String enName;
  final String sound;

  const FamilyMember(
      {required this.image, required this.jpName, required this.enName, required this.sound});
}*/
