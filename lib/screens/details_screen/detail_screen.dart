import 'package:FoodDelivery/components/detail_container.dart';
import 'package:FoodDelivery/components/detial_appbar.dart';
import 'package:FoodDelivery/components/like_button.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    print(size.width);
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                Container(
                  height: 1000,
                ),
                Container(
                  child: Image(
                    image: AssetImage('assets/images/8.png'),
                    width: 450,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  top: 55,
                  child: RowAppBarDetail(),
                ),
                Positioned(
                  top: 400,
                  child: SingleChildScrollView(
                    child: DetailContainer(size: size),
                  ),
                ),
                Positioned(
                  top: 375,
                  right: 35,
                  child: LikeButton(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
