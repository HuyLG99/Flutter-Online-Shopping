import 'package:flutter/material.dart';

class MoreInfoScreen extends StatelessWidget {
  const MoreInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.center,
      child: Text(
          'New T-shirt from SSSENTIALS in 5 colors on sale on Black Friday INFO T-SHIRT V2 Size: M/L/XL. 100% cotton. Color: White Black Pink Olive Gray Designed by SSSENTIALS',
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'Pushster',
          )),
    );
  }
}
