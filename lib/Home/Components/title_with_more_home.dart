// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_log1/Screen/Constrain/colorku.dart';

class TitleWithMoreHome extends StatelessWidget {
  const TitleWithMoreHome({Key? key, required this.title, required this.press})
      : super(key: key);

  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.5),
      child: Row(
        children: <Widget>[
          TitleCustomUnderline(text: title),
          Spacer(),
          FlatButton(
            shape: RoundedRectangleBorder(),
            onPressed: () {},
            child: Text(
              "More",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}

class TitleCustomUnderline extends StatelessWidget {
  const TitleCustomUnderline({Key? key, required this.text}) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20 / 4),
            child: Text(
              text,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: const EdgeInsets.only(right: 15 / 4),
              height: 4,
              color: ColorKu().kPrimaryColor,
            ),
          )
        ],
      ),
    );
  }
}
