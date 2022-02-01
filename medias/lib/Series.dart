import 'package:flutter/material.dart';
import 'package:medias/Favoris.dart';
import 'package:medias/Infos.dart';

class SeriesPage extends StatelessWidget {
  //const SeriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffD0F8C4),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Colors.white,
            Colors.purple.shade300,
          ])),
          child: Column(
            children: [
              Serie1,
              Serie2,
              Serie3,
              Serie4,
            ],
          ),
        ),
      ),
    );
  }

  Widget Serie1 = Container(
    //padding: EdgeInsets.all(3),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            const Text(
              'La Casa De Papel',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            ButtonInfo(
                "Nombre de saisons : 5 \nUn homme mystérieux, surnommé le Professeur (El Profesor), planifie le meilleur braquage jamais organisé. Pour exécuter son plan, il recrute les meilleurs malfaiteurs du pays qui n’ont rien à perdre : Tokyo, Nairobi, Río, Moscou, Berlin, Denver, Helsinki et Oslo. Le but est d’infiltrer la Fabrique nationale de la monnaie et du timbre afin d’imprimer 2,4 milliards d’euros, en moins de onze jours et sans verser une goutte de sang. Pourtant, le groupe sera en charge de 67 otages dont Alison Parker, la fille de l’ambassadeur du Royaume-Uni."),
          ],
        ),
        Image(
          image: AssetImage('assets/Casa.jpg'),
          height: 300,
          width: 200,
        ),
        ButtonFav(),
      ],
    ),
  );

  Widget Serie2 = Container(
    //padding: EdgeInsets.all(3),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            const Text(
              'Game Of Thrones',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            ButtonInfo(
                "Nombre de saisons: 8 \nAprès un été de dix années, un hiver rigoureux s'abat sur le Royaume avec la promesse d'un avenir des plus sombres. Pendant ce temps, complots et rivalités se jouent sur le continent pour s'emparer du Trône de Fer, le symbole du pouvoir absolu."),
          ],
        ),
        Image(
          image: AssetImage('assets/Game.jpg'),
          height: 300,
          width: 200,
        ),
        ButtonFav(),
      ],
    ),
  );

  Widget Serie3 = Container(
    //padding: EdgeInsets.all(3),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            const Text(
              'Dark',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            ButtonInfo(
                "Nombre de saisons : 3 \nEn 2019, le policier Ulrich Nielsen cherche désespérément son fils disparu, Mikkel, âgé de 12 ans. ... Des événements se déroulant en 1953, 1986 et 2019 sont étroitement liés. Les recherches effectuées pour trouver le coupable de ces disparitions vont peu à peu révéler les secrets de la petite ville paisible."),
          ],
        ),
        Image(
          image: AssetImage('assets/Dark.jpg'),
          height: 300,
          width: 200,
        ),
        ButtonFav(),
      ],
    ),
  );

  Widget Serie4 = Container(
    //padding: EdgeInsets.all(3),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            const Text(
              'All Of Us Are Dead',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            ButtonInfo(
                "Nombre de saisons : 1 \nUn lycée devient l'épicentre d'une épidémie liée à un virus zombie. Pris au piège, les élèves devront lutter pour s'échapper ou risquer d'être à leur tour contaminés. Regardez autant que vous voulez."),
          ],
        ),
        Image(
          image: AssetImage('assets/All.jpg'),
          height: 300,
          width: 200,
        ),
        ButtonFav(),
      ],
    ),
  );
}
