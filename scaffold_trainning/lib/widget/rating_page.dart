import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class RatingScreen extends StatelessWidget {
  const RatingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, bottom: 120),
      color: Colors.white60,
      child: Row(
        children: [
          Container(
            width: 150,
            height: 180,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black12,
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        '5.0',
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber[700],
                        size: 35,
                      )
                    ],
                  ),
                  const Text(
                    '2000 Reviews',
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        color: Colors.black,
                        fontSize: 20),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              StarReview(
                percent: 0.9,
                star: 5,
                color: Colors.greenAccent,
              ),
              StarReview(
                percent: 0.4,
                star: 4,
                color: Colors.greenAccent,
              ),
              StarReview(
                percent: 0.4,
                star: 3,
                color: Colors.yellowAccent,
              ),
              StarReview(
                percent: 0.15,
                star: 2,
                color: Colors.yellowAccent,
              ),
              StarReview(
                percent: 0.15,
                star: 1,
                color: Colors.redAccent,
              )
            ],
          )
        ],
      ),
    );
  }
}

class StarReview extends StatelessWidget {
  final double percent;
  final int star;
  final Color color;
  const StarReview(
      {Key? key,
      required this.percent,
      required this.star,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Text(
              star.toString(),
              style: const TextStyle(
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            Icon(
              Icons.star,
              color: Colors.amber[700],
            )
          ],
        ),
        LinearPercentIndicator(
          width: 160,
          lineHeight: 15,
          percent: percent,
          linearStrokeCap: LinearStrokeCap.roundAll,
          progressColor: color,
          backgroundColor: Colors.grey[400],
          animation: true,
          animationDuration: 1000,
        ),
      ],
    );
  }
}
