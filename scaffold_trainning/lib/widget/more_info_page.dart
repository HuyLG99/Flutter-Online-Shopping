import 'package:flutter/material.dart';

class MoreInfoScreen extends StatelessWidget {
  const MoreInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(28.0),
      color: Colors.white60,
      child: const Text(
          "This everyday must-have draws inspiration from clean, minimal design. The contrasting 3-Stripes and Trefoil logo lend a sporty look to this teen's leggings. Stretch cotton fabric feels soft and comfortable.",
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'Quicksand',
          )),
    );
  }
}
