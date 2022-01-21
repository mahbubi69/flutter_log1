// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';

class RoundedButtonScreen extends StatelessWidget {
  const RoundedButtonScreen({
    Key? key,
    required this.size,
    required this.color,
    required this.text,
    required this.onPress,
  }) : super(key: key);

  final Size size;
  final Color color;
  final VoidCallback onPress;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          color: color,
          onPressed: onPress,
          child: Text(
            text,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
