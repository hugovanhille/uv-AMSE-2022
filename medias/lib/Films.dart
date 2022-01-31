import 'package:flutter/material.dart';

class FilmsPage extends StatelessWidget {
  //ignore: must_be_immutable
  //const FilmsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7D1C9),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Film1,
            Film2,
            Film3,
          ],
        ),
      ),
    );
  }

  Widget Film1 = Container(
    //padding: EdgeInsets.all(3),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text(
          'Le seigneur des anneaux ',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Image(
          image: AssetImage('assets/1608701.jpg'),
          height: 300,
          width: 200,
        ),
      ],
    ),
  );

  Widget Film2 = Container(
    //padding: EdgeInsets.all(3),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text(
          'Avengers ',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Image(
          image: AssetImage('assets/Avengers.jpg'),
          height: 300,
          width: 200,
        ),
      ],
    ),
  );

  Widget Film3 = Container(
    //padding: EdgeInsets.all(3),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text(
          'Edge of Tomorrow ',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Image(
          image: AssetImage('assets/Edge.jpg'),
          height: 300,
          width: 200,
        ),
      ],
    ),
  );
}
