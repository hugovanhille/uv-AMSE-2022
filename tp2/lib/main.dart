import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //const Image(
              //  image: NetworkImage('https://picsum.photos/512/1024'),
              //),
              Image.network(
                'https://picsum.photos/512/1024',
                width: 300,
                height: 500,
              ),
              Row(children: <Widget>[
                const Text(
                  '   RotateX:',
                ),
                Expanded(
                  child: const MyStatefulWidget(),
                )
              ]),
              Row(children: <Widget>[
                const Text(
                  '   RotateZ:',
                ),
                Expanded(
                  child: const MyStatefulWidget(),
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
                  child: const MyStatefulWidget(),
                )
              ]),
            ]),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: _currentSliderValue,
      max: 100,
      divisions: 5,
      label: _currentSliderValue.round().toString(),
      onChanged: (double value) {
        setState(() {
          _currentSliderValue = value;
        });
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
