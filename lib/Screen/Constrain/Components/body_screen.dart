import 'package:flutter/material.dart';
import 'package:flutter_log1/Login/Login.dart';
import 'package:flutter_log1/Register/register.dart';
import 'package:flutter_log1/Screen/Constrain/Components/rounded_button_screen.dart';
import 'package:flutter_log1/Screen/Constrain/colorku.dart';
import 'background.dart';

class BodyScreen extends StatelessWidget {
  const BodyScreen({Key? key}) : super(key: key);

  get kPrimaryColor => null;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        size: size,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Welcome",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    fontFamily: 'FontNosiferCaps'),
              ),
              Image.asset(
                'assets/images/bg_screen.png',
                height: size.height * 0.50,
              ),
              RoundedButtonScreen(
                size: size,
                color: ColorKu().kPrimaryColor,
                onPress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                text: 'Login',
              ),
              RoundedButtonScreen(
                size: size,
                color: ColorKu().kPrimaryColorBrigh,
                onPress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Register()));
                },
                text: 'Register',
              )
            ],
          ),
        ));
  }
}
