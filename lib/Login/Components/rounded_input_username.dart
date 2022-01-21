import 'package:flutter/material.dart';
import 'package:flutter_log1/Screen/Constrain/colorku.dart';

class RoundedInputUsername extends StatelessWidget {
  const RoundedInputUsername(
      {Key? key,
      required this.hintText,
      this.icon = Icons.person,
      required this.onChanged})
      : super(key: key);

  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            icon: Icon(
              icon,
              color: ColorKu().kPrimaryColor,
            ),
            hintText: hintText,
            border: InputBorder.none),
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
          color: ColorKu().kPrimaryColorLight,
          borderRadius: BorderRadius.circular(29)),
      child: child,
    );
  }
}
