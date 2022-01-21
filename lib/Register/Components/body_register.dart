import 'package:flutter/material.dart';
import 'package:flutter_log1/Login/Components/already_account_check.dart';
import 'package:flutter_log1/Login/Components/rounded_input_password.dart';
import 'package:flutter_log1/Login/Components/rounded_input_username.dart';
import 'package:flutter_log1/Register/Components/flow_icon_hr.dart';
import 'package:flutter_log1/Screen/Constrain/Components/background.dart';
import 'package:flutter_log1/Screen/Constrain/Components/rounded_button_screen.dart';
import 'package:flutter_log1/Screen/Constrain/colorku.dart';

class BodyRegister extends StatelessWidget {
  const BodyRegister({Key? key}) : super(key: key);

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
              "Register",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            Image.asset('assets/images/bg_register.png'),
            RoundedInputUsername(hintText: 'Email', onChanged: (value) {}),
            RoundedInputPassword(hintText: "password", onChanged: (value) {}),
            RoundedButtonScreen(
              size: size,
              color: ColorKu().kPrimaryColor,
              onPress: () {
                // Navigator.push(
                //     context, MaterialPageRoute(builder: (context) => Login()));
              },
              text: 'Register',
            ),
            AlReadyAccountChek(
              login: false,
              press: () {},
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlowIconHr(press: () {}, icon: "assets/icons/facebook.svg"),
                FlowIconHr(press: () {}, icon: 'assets/icons/google-plus.svg'),
                FlowIconHr(press: () {}, icon: 'assets/icons/twitter.svg')
              ],
            )
          ],
        ),
      ),
    );
  }
}
