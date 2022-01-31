import 'package:flutter/material.dart';

class SeriesPage extends StatelessWidget {
  //const SeriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffD0F8C4),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Serie1,
            Serie2,
            Serie3,
            Serie4,
          ],
        ),
      ),
    );
  }

  Widget Serie1 = Container(
    //padding: EdgeInsets.all(3),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text(
          'La casa de papel ',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Image(
          image: AssetImage('assets/Casa.jpg'),
          height: 300,
          width: 200,
        ),
      ],
    ),
  );

  Widget Serie2 = Container(
    //padding: EdgeInsets.all(3),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text(
          'Game of Thrones ',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Image(
          image: AssetImage('assets/Game.jpg'),
          height: 300,
          width: 200,
        ),
      ],
    ),
  );

  Widget Serie3 = Container(
    //padding: EdgeInsets.all(3),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text(
          'Dark ',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Image(
          image: AssetImage('assets/Dark.jpg'),
          height: 300,
          width: 200,
        ),
      ],
    ),
  );

  Widget Serie4 = Container(
    //padding: EdgeInsets.all(3),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text(
          'All of us are dead ',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Image(
          image: AssetImage('assets/All.jpg'),
          height: 300,
          width: 200,
        ),
      ],
    ),
  );
}
