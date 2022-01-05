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
      color: Colors.white60,
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(
        children: [
          const Center(
            child: Text(
                'Ever wondered what it would be like to wear a cloud? An affordable t-shirt that fits well and is perfect for any event, giveaway, team, or group. Made from ultra-light preshrunk cotton jersey & available in a variety of colors. Start your t-shirt design or call for free support.',
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.w500)),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('PinCode',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Quicksand',
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                  )),
              const Text('Check Avaliability',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  )),
              Column(
                children: const [
                  Text('Delivery By.',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.bold,
                          color: Colors.orange)),
                  Text('25 June, Monday',
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 16,
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
                      fontSize: 16,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold,
                      color: Colors.black))),
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
                      fontSize: 1,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold))),
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
