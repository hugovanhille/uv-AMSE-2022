import 'package:flutter/material.dart';

class ButtonInfo extends StatefulWidget {
  const ButtonInfo(this.info, {Key? key}) : super(key: key);
  final String info;
  String getInfo() {
    return info;
  }

  @override
  _ButtonInfoState createState() => _ButtonInfoState(info);
}

class _ButtonInfoState extends State<ButtonInfo> {
  _ButtonInfoState(this.info);
  final info;
  bool pressed = false;
  var texteButton = "Plus";
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          child: Text(
            '$texteButton d\'infos',
            style: TextStyle(
              fontSize: 10,
              color: Colors.blue.shade800,
            ),
          ),
          onPressed: () {
            if (pressed == true) {
              setState(() {
                pressed = false;
                texteButton = "Plus";
              });
            } else {
              setState(() {
                pressed = true;
                texteButton = "Moins";
              });
            }
          },
        ),
        SizedBox(
            width: 400,
            child: pressed
                ? Text(
                    info,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  )
                : const Text(
                    "",
                  )),
      ],
    );
  }
}
