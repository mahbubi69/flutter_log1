import 'package:flutter/material.dart';
import 'package:flutter_log1/Register/Components/body_register.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodyRegister(),
    );
  }
}
