import 'package:flutter/material.dart';
import 'package:flutter_log1/Home/home.dart';
import 'package:flutter_log1/Login/Components/already_account_check.dart';
import 'package:flutter_log1/Login/Components/background_login.dart';
import 'package:flutter_log1/Login/Components/rounded_input_password.dart';
import 'package:flutter_log1/Login/Components/rounded_input_username.dart';
import 'package:flutter_log1/Screen/Constrain/Components/rounded_button_screen.dart';
import 'package:flutter_log1/Screen/Constrain/colorku.dart';

class BodyLogin extends StatelessWidget {
  const BodyLogin({Key? key}) : super(key: key);

  get style => null;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BackgroundLogin(
        size: size,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Login",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Image.asset(
                'assets/images/bg_login.png',
                height: size.height * 0.40,
              ),
              RoundedInputUsername(hintText: 'Username', onChanged: (value) {}),
              RoundedInputPassword(hintText: "password", onChanged: (value) {}),
              RoundedButtonScreen(
                size: size,
                color: ColorKu().kPrimaryColor,
                onPress: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
                text: 'Masuk',
              ),
              AlReadyAccountChek(press: () {})
            ],
          ),
        ));
  }
}
