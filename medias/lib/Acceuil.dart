import 'package:flutter/material.dart';

class AcceuilPage extends StatelessWidget {
  const AcceuilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            'Bienvenue sur votre application de médias !',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const Text(
            'Vous pouvez naviguer entre les différentes pages Films Séries et Jeux Vidéos et retrouver vos favoris dans la page Favoris.',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
