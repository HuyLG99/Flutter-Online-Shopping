import 'package:flutter/material.dart';

class Descriptionscreen extends StatefulWidget {
  const Descriptionscreen({Key? key}) : super(key: key);

  @override
  _DescriptionscreenState createState() => _DescriptionscreenState();
}

class _DescriptionscreenState extends State<Descriptionscreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink[100],
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(
        children: [
          const Center(
            child: Text(
                'New T-shirt from SSSENTIALS in 5 colors on sale on Black Friday INFO T-SHIRT V2 Size: M/L/XL. 100% cotton. Color: White Black Pink Olive Gray Designed by SSSENTIALS',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Quicksand',
                )),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('PinCode',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Quicksand',
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  )),
              const Text('Check Avaliability',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  )),
              Column(
                children: const [
                  Text('Delivery By.',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.bold,
                          color: Colors.green)),
                  Text('25 June, Monday',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.bold,
                      ))
                ],
              ),
            ],
          ),
          const Align(
              alignment: Alignment.centerLeft,
              child: Text('Colors',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Quicksand',
                  ))),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Align(
              alignment: Alignment.centerLeft,
              child: Text('Size',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Quicksand',
                  ))),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: const [
              Text('L',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Quicksand',
                  )),
              SizedBox(
                width: 20,
              ),
              Text('M',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Quicksand',
                  )),
              SizedBox(
                width: 20,
              ),
              Text('S',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Quicksand',
                  )),
              SizedBox(
                width: 20,
              ),
              Text('SL',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Quicksand',
                  ))
            ],
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
