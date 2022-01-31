import 'package:flutter/material.dart';

class JeuxVideosPage extends StatelessWidget {
  //const JeuxVideosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8C4F1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Jeu1,
            Jeu2,
            Jeu3,
            Jeu4,
          ],
        ),
      ),
    );
  }

  Widget Jeu1 = Container(
    //padding: EdgeInsets.all(3),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text(
          'Mario Kart ',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Image(
          image: AssetImage('assets/Mario.jpg'),
          height: 300,
          width: 200,
        ),
      ],
    ),
  );

  Widget Jeu2 = Container(
    //padding: EdgeInsets.all(3),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text(
          'Call Of Duty ',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Image(
          image: AssetImage('assets/CallOf.jpg'),
          height: 300,
          width: 200,
        ),
      ],
    ),
  );

  Widget Jeu3 = Container(
    //padding: EdgeInsets.all(3),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text(
          'Fortnite ',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Image(
          image: AssetImage('assets/Fortnite.jpg'),
          height: 300,
          width: 200,
        ),
      ],
    ),
  );

  Widget Jeu4 = Container(
    //padding: EdgeInsets.all(3),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text(
          'Minecraft ',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Image(
          image: AssetImage('assets/Minecraft.jpg'),
          height: 300,
          width: 200,
        ),
      ],
    ),
  );
}
