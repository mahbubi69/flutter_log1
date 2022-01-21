import 'package:flutter/material.dart';
import 'package:flutter_log1/Screen/Constrain/colorku.dart';

class HeaderSearch extends StatelessWidget {
  const HeaderSearch({Key? key, required this.size}) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 2.5),
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(
              left: 15,
              right: 5,
              bottom: 25,
            ),
            height: size.height * 0.2 - 10,
            decoration: BoxDecoration(
              color: ColorKu().kPrimaryColor,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(36),
                  bottomRight: Radius.circular(36)),
            ),
            child: Row(
              children: <Widget>[
                Text("Hello !!",
                    style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: ColorKu().kPrimaryColorLight,
                        fontWeight: FontWeight.bold)),
                const Spacer(),
                Image.asset(
                  'assets/images/bg_ogo.png',
                  height: 190,
                  width: 190,
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: 15),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              height: 54,
              decoration: BoxDecoration(
                  color: ColorKu().kPrimaryColorLight,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      // color: Color(Colors.white)
                    ),
                  ]),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},
                      decoration: const InputDecoration(
                        hintText: "Seacrh",
                        hintStyle: TextStyle(color: Colors.purple),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  // SvgPicture.asset("assets/icons/search.svg"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
