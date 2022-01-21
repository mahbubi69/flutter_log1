// ignore: file_names
import 'package:flutter/material.dart';
import 'Components/body_login.dart';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body : BodyLogin(),
    );
  }
}