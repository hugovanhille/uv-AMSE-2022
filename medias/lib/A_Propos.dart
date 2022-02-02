import 'package:flutter/material.dart';

class AProposPage extends StatelessWidget {
  const AProposPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topCenter, colors: [
        Colors.blue.shade100,
        Colors.red.shade100,
      ])),
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            'A Propos',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 150),
          const Text(
            'Réalisé par Hugo Vanhille',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          const Text(
            'Publié en Février 2022',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          const Text(
            'Testé sur Google Pixel 6',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          SizedBox(width: 200),
          SizedBox(width: 200),
          SizedBox(width: 200),
          const Text(
            'Version 1.0.0',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
