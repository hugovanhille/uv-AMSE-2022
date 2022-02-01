import 'dart:html';

import 'package:flutter/material.dart';
import 'package:medias/Favoris.dart';
import 'package:medias/Infos.dart';

class FilmsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7D1C9),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Colors.white,
            Colors.green.shade300,
          ])),
          child: Column(
            children: [
              Film1,
              Film2,
              Film3,
              Film4,
            ],
          ),
        ),
      ),
    );
  }

  Widget Film1 = Container(
    //padding: EdgeInsets.all(3),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            const Text(
              'Le seigneur des anneaux',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            ButtonInfo(
                "Un jeune et timide `Hobbit', Frodon Sacquet, hérite d'un anneau magique. Bien loin d'être une simple babiole, il s'agit d'un instrument de pouvoir absolu qui permettrait à Sauron, le `Seigneur des ténèbres', de régner sur la `Terre du Milieu' et de réduire en esclavage ses peuples. Frodon doit parvenir jusqu'à la `Crevasse du Destin' pour détruire l'anneau."),
          ],
        ),
        const Image(
          image: AssetImage('assets/1608701.jpg'),
          height: 300,
          width: 200,
        ),
        ButtonFav(),
      ],
    ),
  );

  Widget Film2 = Container(
    //padding: EdgeInsets.all(3),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            const Text(
              'Avengers',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            ButtonInfo(
                "Quand un ennemi inattendu fait surface pour menacer la sécurité et l'équilibre mondial, Nick Fury, directeur de l'agence internationale pour le maintien de la paix, connue sous le nom du S.H.I.E.L.D., doit former une équipe pour éviter une catastrophe mondiale imminente. Un effort de recrutement à l'échelle mondiale est mis en place, pour finalement réunir l'équipe de super héros de rêve, dont Iron Man, l'incroyable Hulk, Thor, Captain America, Hawkeye et Black Widow."),
          ],
        ),
        const Image(
          image: AssetImage('assets/Avengers.jpg'),
          height: 300,
          width: 200,
        ),
        ButtonFav(),
      ],
    ),
  );

  Widget Film3 = Container(
    //padding: EdgeInsets.all(3),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          children: [
            const Text(
              'Edge Of Tomorrow',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const ButtonInfo(
                "Dans un futur proche, des hordes d'extraterrestres ont livré une bataille acharnée contre la Terre et semblent désormais invincibles : aucune armée au monde n'a réussi à les vaincre. Le commandant William Cage, qui n'a jamais combattu de sa vie, est envoyé, sans la moindre explication, dans ce qui ressemble à une mission-suicide. Il meurt en l'espace de quelques minutes et se retrouve projeté dans une boucle temporelle, condamné à revivre le même combat et à mourir de nouveau indéfiniment."),
          ],
        ),
        const Image(
          image: AssetImage('assets/Edge.jpg'),
          height: 300,
          width: 200,
        ),
        ButtonFav(),
      ],
    ),
  );

  Widget Film4 = Container(
    //padding: EdgeInsets.all(3),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          children: [
            const Text(
              'Star Wars',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const ButtonInfo(
                "Il y a bien longtemps, dans une galaxie très lointaine. La guerre civile fait rage entre l'Empire galactique et l'Alliance rebelle. Capturée par les troupes de choc de l'Empereur menées par le sombre et impitoyable Dark Vador, la princesse Leia Organa dissimule les plans de l'Etoile Noire, une station spatiale invulnérable, à son droïde R2-D2 avec pour mission de les remettre au Jedi Obi-Wan Kenobi."),
          ],
        ),
        const Image(
          image: AssetImage('assets/Star.jpeg'),
          height: 300,
          width: 200,
        ),
        ButtonFav(),
      ],
    ),
  );
}
