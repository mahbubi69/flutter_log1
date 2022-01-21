import 'package:flutter/material.dart';
import 'package:flutter_log1/Screen/Welcome/welcome_screen.dart';

import 'Screen/Constrain/colorku.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Projek Boby',
      home: const WelocomScreen(),
      theme: ThemeData(
          primaryColor: ColorKu().kPrimaryColor,
          scaffoldBackgroundColor: Colors.white),
    );
  }
}
