import 'package:flutter/material.dart';

class home_screen extends StatefulWidget {
  home_screen({Key? key}) : super(key: key);

  @override
  _home_screenState createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    var categories;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.search,
                    size: 30,
                  )
                ],
              )
            ],
          ),
        ],
        backgroundColor: Colors.pink,
        title: Text(
          'Home',
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: Drawer(
        elevation: 20.0,
        backgroundColor: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(50, 50, 50, 20),
              child: CircleAvatar(
                radius: 35,
                child: Image.asset('assets/pic/ic_user.png'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Le Huy",
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: const [
                      Text(
                        "08",
                        style: TextStyle(
                          color: Colors.pink,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text("My Order"),
                    ],
                  ),
                  Column(
                    children: const [
                      Text(
                        "09",
                        style: TextStyle(
                          color: Colors.pink,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text("Wishlist"),
                    ],
                  )
                ],
              ),
            ),
            ListTile(
              title: new Text("Man"),
              leading: Image.asset(
                'assets/icons/ic_men.png',
                width: 20,
                height: 20,
              ),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: new Text("Women"),
              leading: Image.asset(
                'assets/icons/ic_woman.png',
                width: 20,
                height: 20,
              ),
            ),
            ListTile(
              title: new Text("Baby & Kids"),
              leading: Image.asset(
                'assets/icons/ic_kids.png',
                width: 20,
                height: 20,
              ),
            ),
            ListTile(
              title: new Text("Bags"),
              leading: Image.asset(
                'assets/icons/ic_bag.png',
                width: 20,
                height: 20,
              ),
            ),
            ListTile(
              title: new Text("Decor"),
              leading: Image.asset(
                'assets/icons/ic_decor.png',
                width: 20,
                height: 20,
              ),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: new Text("Sport"),
              leading: Image.asset(
                'assets/icons/ic_sports.png',
                width: 20,
                height: 20,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            ListTile(
              title: new Text("Account"),
              leading: Image.asset(
                'assets/icons/user.png',
                width: 20,
                height: 20,
              ),
            ),
            ListTile(
              title: new Text("Settings"),
              leading: Image.asset(
                'assets/icons/settings.png',
                width: 20,
                height: 20,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.pink,
        selectedFontSize: 13,
        unselectedFontSize: 13,
        iconSize: 25,
        items: const [
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.home_outlined),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.favorite_outline),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.shopping_cart_outlined),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.person_outline),
          ),
        ],
      ),
      body: Container(
        child: ListView(
          children: [
            LimitedBox(
              maxHeight: 250,
              child: PageView(
                children: const [
                  AdsSlideCard(
                    slideImage: "assets/products/banners/b1.jpg",
                  ),
                  AdsSlideCard(
                    slideImage: "assets/products/banners/b2.jpg",
                  ),
                  AdsSlideCard(
                    slideImage: "assets/products/banners/b3.jpg",
                  ),
                  AdsSlideCard(
                    slideImage: "assets/products/banners/b4.jpg",
                  ),
                  AdsSlideCard(
                    slideImage: "assets/products/banners/b5.jpg",
                  ),
                  AdsSlideCard(
                    slideImage: "assets/products/banners/b6.jpg",
                  ),
                ],
              ),
            ),
            GridView.count(
              crossAxisCount: 5,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: const [
                MenuCate(
                  iconAsset: 'assets/icons/ic_men.png',
                  name: 'Men',
                  colorpic: Colors.red,
                  colortext: Colors.red,
                ),
                MenuCate(
                  iconAsset: 'assets/icons/ic_woman.png',
                  name: 'Women',
                  colorpic: Colors.blueAccent,
                  colortext: Colors.blueAccent,
                ),
                MenuCate(
                  iconAsset: 'assets/icons/ic_kids.png',
                  name: 'Baby & Kids',
                  colorpic: Colors.yellow,
                  colortext: Colors.yellow,
                ),
                MenuCate(
                  iconAsset: 'assets/icons/ic_bag.png',
                  name: 'Bags',
                  colorpic: Colors.lightBlue,
                  colortext: Colors.lightBlue,
                ),
                MenuCate(
                  iconAsset: 'assets/icons/ic_decor.png',
                  name: 'Decor',
                  colorpic: Colors.greenAccent,
                  colortext: Colors.greenAccent,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 10, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Newest Arrivals",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                  SizedBox(
                    width: 90,
                  ),
                  Text("View all", style: TextStyle(color: Colors.grey)),
                  SizedBox(
                    width: 3,
                  ),
                  //         Container(
                  //   color: Colors.grey[200],
                  //   height: 8,
                  // ),
                  // LimitedBox(
                  //   maxHeight: 220,
                  //   child: ListView(
                  //     scrollDirection: Axis.horizontal,
                  //     children: [TrendingCard(), TrendingCard(), TrendingCard()],
                  //   ),
                  // ),
                  SizedBox(
                    height: 10,
                  ),
                  // SingleChildScrollView(
                  //   scrollDirection: Axis.horizontal,
                  //   child: Row(
                  //     children: List.generate(categories.lenght, (index) {
                  //       return Padding(
                  //         padding: const EdgeInsets.only(left: 15),
                  //         child: Container(
                  //           width: 180,
                  //           height: 220,
                  //           child: Stack(
                  //             children: [
                  //               Container(
                  //                 decoration: BoxDecoration(
                  //                     image: DecorationImage(
                  //                         image: NetworkImage(
                  //                             categories[index]['imgUrl']),
                  //                         fit: BoxFit.cover),
                  //                     borderRadius: BorderRadius.circular(5)),
                  //               ),
                  // Container(
                  //   decoration: BoxDecoration(
                  //       color: Colors.black.withOpacity(0.1),
                  //       borderRadius: BorderRadius.circular(5)),
                  // ),
                  // Positioned(
                  //   bottom: 5,
                  //   child: Padding(
                  //     padding: const EdgeInsets.all(10.0),
                  //     child: Text(
                  //       categories[index]['title'],
                  //       style: TextStyle(
                  //           fontSize: 18,
                  //           fontWeight: FontWeight.bold,
                  //           color: Colors.white),
                  //     ),
                  //   ),
                  // )
                  //             ],
                  //           ),
                  //         ),
                  //       );
                  //     }),
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TrendingCard extends StatelessWidget {
  const TrendingCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          "assets/products/dress/dress_1.jpeg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class AdsSlideCard extends StatelessWidget {
  const AdsSlideCard({Key? key, required this.slideImage}) : super(key: key);
  final String slideImage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          height: 200,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              slideImage,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}

class MenuCate extends StatelessWidget {
  const MenuCate({
    Key? key,
    required this.iconAsset,
    required this.name,
    required this.colortext,
    required this.colorpic,
    // required this.colortext,
  }) : super(key: key);
  final String iconAsset;
  final String name;
  final Color colortext;
  final Color colorpic;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: CircleAvatar(
              backgroundColor: colorpic,
              radius: 25,
              child: Image.asset(
                iconAsset,
                height: 30,
                width: 30,
                color: Colors.white,
              ),
            ),
          ),
          Text(
            name,
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.bold, color: colortext),
          ),
        ],
      ),
    );
  }
}
