import 'package:flutter/material.dart';
import 'package:flutter_log1/Screen/Constrain/colorku.dart';

class RoundedInputPassword extends StatelessWidget {
  const RoundedInputPassword(
      {Key? key,
      required this.hintText,
      this.icon = Icons.lock,
      this.iconFuff = Icons.visibility,
      required this.onChanged, 
      this.obsecureText = true})
      : super(key: key);

  final String hintText;
  final IconData icon, iconFuff;
  final bool obsecureText;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    // bool _obsecureText = true;
    return TextFieldContainerPw(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            icon: Icon(
              icon,
              color: ColorKu().kPrimaryColor,
            ),
            suffixIcon: IconButton(
              icon: Icon(
                // ignore: dead_code
                obsecureText ? Icons.visibility : Icons.visibility_off,
              ),
              onPressed: () {
                  //  obsecureText = !obsecureText;
              },
              // onTap: () {
              //   _obsecureText = !_obsecureText;
              // },
              // child: _obsecureText ? Icon(
              //   Icons.visibility_off,
              //   color: ColorKu().kPrimaryColorWhite,
              // ):
              // Icon(
              //   Icons.visibility_off,
              //   color: ColorKu().kPrimaryColorWhite,
              // ),
            ),
            hintText: hintText,
            border: InputBorder.none),
        // obscureText: _obsecureText,
      ),
    );
  }
}

class TextFieldContainerPw extends StatelessWidget {
  final Widget child;
  const TextFieldContainerPw({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
          color: ColorKu().kPrimaryColorLight,
          borderRadius: BorderRadius.circular(29)),
      child: child,
    );
  }
}
