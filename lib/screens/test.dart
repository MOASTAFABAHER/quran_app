import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TestWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SvgPicture.asset(
          "assets/images/icon/Heart.svg",
          color: Colors.red,
        )
      ]),
    );
  }
}
