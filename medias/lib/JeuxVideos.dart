import 'package:flutter/material.dart';
import 'package:medias/Favoris.dart';
import 'package:medias/Infos.dart';

class JeuxVideosPage extends StatelessWidget {
  //const JeuxVideosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8C4F1),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Colors.white,
            Colors.pink.shade300,
          ])),
          child: Column(
            children: [
              Jeu1,
              Jeu2,
              Jeu3,
              Jeu4,
            ],
          ),
        ),
      ),
    );
  }

  Widget Jeu1 = Container(
    //padding: EdgeInsets.all(3),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            const Text(
              'Mario Kart',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            ButtonInfo(
                "Date de sortie : 1992 \nL'objectif principal de Mario Kart est simple : le joueur doit parcourir le plus rapidement possible des circuits, un certain nombre de fois, dans l'optique de franchir la ligne d'arrivée en premier. Les adversaires sont contrôlés soit par l'ordinateur, soit par d'autres joueurs. Pour se faciliter la tâche, le joueur a la possibilité d'utiliser de nombreux objets. Ceux-ci s'obtiennent en atteignant avec son véhicule des cubes dotés d'un « ? » nommés Boîtes à Objets."),
          ],
        ),
        const Image(
          image: AssetImage('assets/Mario.jpg'),
          height: 300,
          width: 200,
        ),
        const ButtonFav(9),
      ],
    ),
  );

  Widget Jeu2 = Container(
    //padding: EdgeInsets.all(3),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            const Text(
              'Call Of Duty',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            ButtonInfo(
                "Date de sortie : 2003 \nCall of Duty ou COD (en français l'« Appel du devoir ») est une série de jeux vidéo de tir à la première personne sur la guerre. La série a été créée par le studio Infinity Ward et éditée par Activision. Les trois premiers opus prennent place lors de la Seconde Guerre mondiale tandis que les épisodes suivants évoluent vers des conflits modernes fictifs"),
          ],
        ),
        const Image(
          image: AssetImage('assets/CallOf.jpg'),
          height: 300,
          width: 200,
        ),
        const ButtonFav(10),
      ],
    ),
  );

  Widget Jeu3 = Container(
    //padding: EdgeInsets.all(3),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            const Text(
              'Fortnite',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            ButtonInfo(
                "Date de sortie : 2017 \nFortnite est un jeu en ligne développé par Epic Games sous la forme de différents modes de jeu qui partagent le même gameplay général et le même moteur de jeu. Les modes de jeu comprennent : Fortnite : Sauver le monde, un jeu coopératif de tir et de survie conçu pour quatre joueurs au maximum et dont le but est de combattre des zombies et de défendre des objets à l'aide de fortifications, et Fortnite Battle Royale, un jeu de battle royale en free-to-play où jusqu'à 100 joueurs se battent entre eux dans des espaces de plus en plus petits avec pour objectif d'être le dernier survivant."),
          ],
        ),
        const Image(
          image: AssetImage('assets/Fortnite.jpg'),
          height: 300,
          width: 200,
        ),
        const ButtonFav(11),
      ],
    ),
  );

  Widget Jeu4 = Container(
    //padding: EdgeInsets.all(3),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            const Text(
              'Minecraft',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            ButtonInfo(
                "Date de sortie : 2011 \nMinecraft est un jeu vidéo de type aventure « bac à sable » (construction complètement libre) développé par le Suédois Markus Persson, alias Notch, puis par la société Mojang Studios. Il s'agit d'un univers composé de voxels et généré de façon procédurale, qui intègre un système d'artisanat axé sur l'exploitation puis la transformation de ressources naturelles (minéralogiques, fossiles, animales et végétales)."),
          ],
        ),
        const Image(
          image: AssetImage('assets/Minecraft.jpg'),
          height: 300,
          width: 200,
        ),
        const ButtonFav(0),
      ],
    ),
  );
}
