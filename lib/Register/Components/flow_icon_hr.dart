import 'package:flutter/material.dart';
import 'package:flutter_log1/Screen/Constrain/colorku.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FlowIconHr extends StatelessWidget {
  const FlowIconHr({Key? key, required this.press, required this.icon})
      : super(key: key);

  final VoidCallback press;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: ColorKu().kPrimaryColor
              ),
              shape: BoxShape.circle),
          child: SvgPicture.asset(
            icon,
            height: 20,
            width: 20,
          )),
    );
  }
}
