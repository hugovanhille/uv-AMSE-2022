import 'package:flutter/material.dart';

class FavorisPage extends StatelessWidget {
  const FavorisPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      color: Colors.amber[600],
      width: 48.0,
      height: 48.0,
    );
  }
}

class ButtonFav extends StatefulWidget {
  const ButtonFav({Key? key}) : super(key: key);
  @override
  _ButtonFavState createState() => _ButtonFavState();
}

class _ButtonFavState extends State<ButtonFav> {
  var couleur;
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
          if (couleur == Colors.black) {
            couleur = Colors.red;
          } else {
            couleur = Colors.black;
          }
        });
      },
    );
  }
}
