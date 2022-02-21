import 'package:flutter/material.dart';

List<double> val_slider = [0, 0, 100];
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Transform(
                alignment: Alignment.center,
                transform: Matrix4.rotationX(
                  val_slider[0],
                )
                  ..rotateY(
                    val_slider[1],
                  )
                  ..scale(
                    val_slider[2] / 100,
                  ),
                child: Image.network(
                  'https://picsum.photos/512/1024',
                  width: 300,
                  height: 500,
                ),
              ),
              Row(children: <Widget>[
                const Text(
                  '   RotateX:',
                ),
                Expanded(
                  child: const MyStatefulWidget(0),
                )
              ]),
              Row(children: <Widget>[
                const Text(
                  '   RotateZ:',
                ),
                Expanded(
                  child: const MyStatefulWidget(1),
                )
              ]),
              Row(children: <Widget>[
                const Text(
                  '  Mirror:',
                ),
                button(),
              ]),
              Row(children: <Widget>[
                const Text(
                  '  Scale:',
                ),
                Expanded(
                  child: const MyStatefulWidget(2),
                )
              ]),
            ]),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget(this.indice, {Key? key}) : super(key: key);
  final int indice;
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState(indice);
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  _MyStatefulWidgetState(this.indice);
  final indice;
  var valeur;

  @override
  void initState() {
    super.initState();
    valeur = val_slider[indice];
  }

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: valeur,
      max: 100,
      divisions: 100,
      label: valeur.round().toString(),
      onChanged: (double value) {
        setState(() {
          valeur = value;
          //const image();

          debugPrint(val_slider[0].toString());
        });
        val_slider[indice] = valeur;
      },
    );
  }
}

class button extends StatefulWidget {
  const button({Key? key}) : super(key: key);

  @override
  _buttonState createState() => _buttonState();
}

class _buttonState extends State<button> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {});
      },
      icon: const Icon(Icons.crop_square),
    );
  }
}
/*
class image extends StatefulWidget {
  const image({Key? key}) : super(key: key);

  @override
  _imageState createState() => _imageState();
}

class _imageState extends State<image> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationX(
          val_slider[0],
        )
          ..rotateY(
            val_slider[1],
          )
          ..scale(
            val_slider[2] / 100,
          ),
        child: Image.network(
          'https://picsum.photos/512/1024',
          width: 300,
          height: 500,
        ),
      ),
    );
  }
}*/
