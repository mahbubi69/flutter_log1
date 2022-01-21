import 'package:flutter/material.dart';
import 'package:flutter_log1/Home/Components/title_with_more_home.dart';

import 'header_search.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // itu akan memberi kita total tinggi dan berat atau layar
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderSearch(
            size: size,
          ),
          TitleWithMoreHome(title: "Recomended", press: () {})
        ],
      ),
    );
  }
}
