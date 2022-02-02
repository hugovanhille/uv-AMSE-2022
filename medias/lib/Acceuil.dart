import 'package:flutter/material.dart';

class AcceuilPage extends StatelessWidget {
  const AcceuilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topCenter, colors: [
        Colors.blue.shade300,
        Colors.red.shade300,
      ])),
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            'Bienvenue sur votre application de médias !',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          const Text(
            'Vous pouvez naviguer entre les différentes pages Films, Séries et Jeux Vidéos pour découvrir du contenu de divertissement qui vous intéresse. Si vous souhaitez plus d\'informations sur un média, cliquez sur le bouton plus d\'informations. Si un média vous plait vous avez la possibilité de l\'enregistrer dans vos favoris n cliquant sur l\'icone en forme de coeur.',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
