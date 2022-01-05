import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:scaffold_trainning/widget/desciption_page.dart';
import 'package:scaffold_trainning/widget/more_info_page.dart';
import 'package:scaffold_trainning/widget/rating_page.dart';

class DetailScreen extends StatefulWidget {
  @required
  final String text;
  final int cost;
  final int sale;
  final String images;
  const DetailScreen(
      {Key? key,
      required this.text,
      required this.cost,
      required this.images,
      required this.sale})
      : super(key: key);

  @override
  _DetailScreenState createState() =>
      // ignore: no_logic_in_create_state
      _DetailScreenState(text, cost, images, sale);
}

class _DetailScreenState extends State<DetailScreen>
    with TickerProviderStateMixin {
  final String text;
  final int cost;
  final int sale;
  final String images;
  static const List<Tab> _tabs = [
    Tab(text: 'Description'),
    Tab(text: 'More Info'),
    Tab(text: 'Reviews'),
  ];

  _DetailScreenState(this.text, this.cost, this.images, this.sale);
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(250),
        child: AppBar(
          foregroundColor: Colors.black,
          actions: [
            const IconButton(
              onPressed: null,
              icon: Icon(
                Icons.favorite_outline,
                color: Colors.black,
                size: 30,
              ),
            ),
            Badge(
              position: BadgePosition.topEnd(top: 8, end: 8),
              badgeContent: const Text(
                '9',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              child: IconButton(
                  icon: const Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.black,
                    size: 30,
                  ),
                  onPressed: () {}),
            ),
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/products/dress/' + images),
                  fit: BoxFit.cover),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 40),
        child: SingleChildScrollView(
          child: Container(
            color: Colors.grey[300],
            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, bottom: 10, top: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(text,
                          style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Quicksand',
                              color: Colors.black)),
                      Text('\$' + cost.toString(),
                          style: const TextStyle(
                              fontSize: 20,
                              fontFamily: 'Quicksand',
                              color: Colors.pink))
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        width: 90,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.pink,
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Text('5.0',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Quicksand',
                                    color: Colors.white,
                                  )),
                              Icon(
                                Icons.star,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Text('2000 Reviewer',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Quicksand',
                            color: Colors.grey[400],
                          )),
                      Text(
                        '\$' + sale.toString(),
                        style: const TextStyle(
                            fontSize: 20,
                            fontFamily: 'Quicksand',
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.grey[300],
                  child: Container(
                    color: Colors.white30,
                    child: Align(
                      alignment: Alignment.center,
                      child: TabBar(
                        labelPadding:
                            const EdgeInsets.only(left: 20, right: 20),
                        labelColor: Colors.pink,
                        controller: _tabController,
                        unselectedLabelColor: Colors.grey,
                        isScrollable: true,
                        indicatorSize: TabBarIndicatorSize.label,
                        tabs: _tabs,
                        labelStyle: const TextStyle(
                          fontSize: 16,
                          fontFamily: 'Quicksand',
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.grey[300],
                  height: 400,
                  width: double.maxFinite,
                  child: TabBarView(
                    controller: _tabController,
                    children: const [
                      Descriptionscreen(),
                      MoreInfoScreen(),
                      RatingScreen(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: getBottom(context),
    );
  }
}

Widget getBottom(BuildContext context) {
  var size = MediaQuery.of(context).size;
  return Row(
    children: [
      SizedBox(
        width: size.width / 2,
        height: 50,
        child: TextButton(
          style: TextButton.styleFrom(
            shadowColor: Colors.black,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                topLeft: Radius.circular(30),
              ),
            ),

            // primary: Colors.white,
            // backgroundColor: Colors.green,
          ),
          onPressed: () {},
          child: const Text(
            'Add To Cart',
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Quicksand',
                fontSize: 22,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      Expanded(
        child: SizedBox(
          width: size.width / 2,
          height: 50,
          child: TextButton(
            style: TextButton.styleFrom(
              shadowColor: Colors.redAccent,
              side: const BorderSide(color: Colors.pinkAccent, width: 1),
              elevation: 20,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              // primary: Colors.white,
              backgroundColor: Colors.pink,
            ),
            onPressed: () {},
            child: const Text(
              'Buy Now',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Quicksand',
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    ],
  );
}
