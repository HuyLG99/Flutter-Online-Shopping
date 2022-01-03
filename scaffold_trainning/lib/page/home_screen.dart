import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:scaffold_trainning/page/detail_screen.dart';
import 'package:scaffold_trainning/widget/listitems.dart';
import 'package:scaffold_trainning/widget/product_detail.dart';

class home_screen extends StatefulWidget {
  home_screen({Key? key}) : super(key: key);

  @override
  _home_screenState createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Home',
            style:
                TextStyle(fontFamily: 'Quicksand', fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          )
        ],
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
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/pic/bg_bottom_bar.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: BottomNavigationBar(
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
      ),
      body: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              viewportFraction: 1.0,
              autoPlay: true,
              enlargeCenterPage: true,
            ),
            items: imgList.map(
              (url) {
                return Image.asset(
                  'assets/products/banners/' + url,
                  fit: BoxFit.cover,
                  width: 1000.0,
                  height: 120.0,
                );
              },
            ).toList(),
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
            padding: const EdgeInsets.all(12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Newwest Arrival',
                  style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'View All',
                  style: TextStyle(fontFamily: 'Quicksand', fontSize: 16),
                )
              ],
            ),
          ),
          SizedBox(
            height: 250,
            width: double.maxFinite,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (_, i) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(
                            text: name[i],
                            cost: cost[i],
                            images: dress[i],
                            sale: sale[i],
                          ),
                        ),
                      );
                    },
                    child: ListItems(
                      text: name[i],
                      image: dress[i],
                      cost: cost[i],
                      sale: sale[i],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}

// class TrendingCard extends StatelessWidget {
//   const TrendingCard({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 200,
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(10),
//         child: Image.asset(
//           "assets/products/dress/dress_1.jpeg",
//           fit: BoxFit.cover,
//         ),
//       ),
//     );
//   }
// }

// class AdsSlideCard extends StatelessWidget {
//   const AdsSlideCard({Key? key, required this.slideImage}) : super(key: key);
//   final String slideImage;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Card(
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//         child: Container(
//           height: 200,
//           child: ClipRRect(
//             borderRadius: BorderRadius.circular(10),
//             child: Image.asset(
//               slideImage,
//               fit: BoxFit.cover,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

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

final cost = [5, 10, 15];
final sale = [10, 20, 30];
final List name = [
  "Red Dress",
  "Vamsi",
  "Idalia",
];
final List dress = [
  'dress_1.jpeg',
  'dress_2.jpeg',
  'dress_3.jpeg',
];
final imgList = [
  'b1.jpg',
  'b2.jpg',
  'b3.jpg',
  'b4.jpg',
  'b5.jpg',
  'b6.jpg',
];
