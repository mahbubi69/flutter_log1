import 'package:flutter/material.dart';
import 'package:flutter_log1/Screen/Constrain/colorku.dart';
import 'package:flutter_svg/svg.dart';

import 'Components/body_home.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const BodyHome(),
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/menu.svg'),
          onPressed: () {},
        ),
        backgroundColor: ColorKu().kPrimaryColor,
      ),
    );
  }
}
