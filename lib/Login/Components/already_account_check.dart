import 'package:flutter/material.dart';
import 'package:flutter_log1/Screen/Constrain/colorku.dart';

class AlReadyAccountChek extends StatelessWidget {
  const AlReadyAccountChek({Key? key, this.login = true, required this.press})
      : super(key: key);

  final bool login;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login
              ? "Apakah Anda Tidak Memiliki Akun ? "
              : "Silahkan Daftar Terlebih Dahulu ?",
          style: TextStyle(color: ColorKu().kPrimaryColor),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Daftar Akun?" : " Masuk?",
            style: TextStyle(
                color: ColorKu().kPrimaryColor, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
