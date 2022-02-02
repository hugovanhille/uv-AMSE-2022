import 'package:flutter/material.dart';
import 'dart:core';

List<bool> listFav = [
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false
];

class ButtonFav extends StatefulWidget {
  const ButtonFav(this.titre, {Key? key}) : super(key: key);
  final int titre;

  @override
  _ButtonFavState createState() => _ButtonFavState(titre);
}

class _ButtonFavState extends State<ButtonFav> {
  _ButtonFavState(this.titre);
  final titre;
  var couleur;
  @override
  void initState() {
    super.initState();
    if (listFav[titre] == true) {
      couleur = Colors.redAccent.shade700;
    } else {
      couleur = Colors.black26;
    }
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.favorite,
        size: 20,
        color: couleur,
      ),
      tooltip: "Favoris",
      onPressed: () {
        setState(() {
          if (couleur == Colors.black26) {
            couleur = Colors.redAccent.shade700;
            listFav[titre] = true;
          } else {
            couleur = Colors.black26;
            listFav[titre] = false;
          }
        });
      },
    );
  }
}
