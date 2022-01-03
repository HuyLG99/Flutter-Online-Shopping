import 'package:flutter/material.dart';

class ListItems extends StatelessWidget {
  final String text;
  final int cost;
  final int sale;
  final String image;
  const ListItems({
    Key? key,
    required this.text,
    required this.image,
    required this.cost,
    required this.sale,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var sale = cost / 0.5;
    return Column(
      children: [
        Container(
            margin: const EdgeInsets.only(left: 8),
            child: Column(children: [
              Container(
                width: 150,
                height: 220,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage("assets/products/dress/" + image),
                        fit: BoxFit.fill)),
              ),
              Row(
                //crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    text,
                    style:
                        const TextStyle(fontFamily: 'Quicksand', fontSize: 16),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    '\$' + sale.toString(),
                    style: const TextStyle(
                        fontSize: 16,
                        fontFamily: 'Quicksand',
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    '\$' + cost.toString(),
                    style: const TextStyle(
                        fontSize: 16,
                        fontFamily: 'Quicksand',
                        color: Colors.red),
                  )
                ],
              ),
            ])),
      ],
    );
  }
}
