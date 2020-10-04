import 'package:FoodDelivery/components/category_row_scroll_menu.dart';
import 'package:FoodDelivery/components/populer_row_items.dart';
import 'package:FoodDelivery/components/recommend_row_items.dart';
import 'package:FoodDelivery/components/row_menu_title.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = 0;
  }

  void changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.shopping_basket),
        backgroundColor: Colors.purple,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BubbleBottomBar(
        opacity: .2,
        currentIndex: currentIndex,
        onTap: changePage,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        elevation: 8,
        fabLocation: BubbleBottomBarFabLocation.end, //new
        hasNotch: true, //new
        hasInk: true, //new, gives a cute ink effect
        inkColor: Colors.black12, //optional, uses theme color if not specified
        items: <BubbleBottomBarItem>[
          BubbleBottomBarItem(
              backgroundColor: Colors.red,
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.home,
                color: Colors.red,
              ),
              title: Text("Home")),
          BubbleBottomBarItem(
              backgroundColor: Colors.deepPurple,
              icon: Icon(
                Icons.favorite_border,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.favorite_border,
                color: Colors.deepPurple,
              ),
              title: Text("Logs")),
          BubbleBottomBarItem(
              backgroundColor: Colors.indigo,
              icon: Icon(
                Icons.category,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.category,
                color: Colors.indigo,
              ),
              title: Text("Folders")),
          BubbleBottomBarItem(
              backgroundColor: Colors.green,
              icon: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.settings,
                color: Colors.green,
              ),
              title: Text("Menu"))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            RowMenuTitle(
              title: 'Explorar categorias',
            ),
            ScrollMenuCategory(),
            RowMenuTitle(title: 'Productos populares'),
            RowMenuPopuler(),
            RowMenuTitle(title: 'Recomendes'),
            RowMenuReommended()
          ],
        ),
      ),
    );
  }
}

AppBar buildAppbar() {
  return AppBar(
    toolbarHeight: 65,
    centerTitle: true,
    backgroundColor: Colors.white,
    elevation: 8,
    title: Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Text(
        'Inico',
        style: TextStyle(
          color: Colors.purple,
          fontSize: 30,
        ),
      ),
    ),
    actions: <Widget>[
      SizedBox(
        width: 75,
      ),
      IconButton(
        icon: Icon(
          Icons.notifications_none,
          color: Colors.cyan[300],
          size: 25,
        ),
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(
          Icons.local_offer,
          color: Colors.pink,
          size: 25,
        ),
        onPressed: () {},
      ),
    ],
    leading: IconButton(
      icon: Icon(
        Icons.search,
        color: Colors.purple,
        size: 32,
      ),
      onPressed: () {},
    ),
  );
}
