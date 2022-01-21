import 'package:flutter/material.dart';
import 'package:flutter_log1/Screen/Constrain/Components/body_screen.dart';

class WelocomScreen extends StatelessWidget {
  const WelocomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodyScreen(),
    );
  }
}
