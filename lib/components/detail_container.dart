import 'package:FoodDelivery/components/row_menu_detail.dart';
import 'package:FoodDelivery/screens/details_screen/detail_screen.dart';
import 'package:flutter/material.dart';

class DetailContainer extends StatelessWidget {
  const DetailContainer({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.elliptical(450, 110)),
      ),
      width: size.width,
      height: size.height,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 75),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Text(
                'Descripción',
                style: TextStyle(
                  color: Colors.blue[900],
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Text(
                'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur',
                style: TextStyle(
                  color: Colors.blue[900],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Row(
                children: <Widget>[
                  Text(
                    'Ingredientes',
                    style: TextStyle(color: Colors.blue[900], fontSize: 17),
                  ),
                  Spacer(),
                  Text('10 ingredientes', style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),
            RowMenu(),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 32, vertical: 25),
                  width: 150,
                  height: 50,
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    gradient: new RadialGradient(
                      colors: [Colors.blue, Colors.indigo],
                    ),
                  ),
                  child: FlatButton(
                    child: new Text(
                      'Add to cart',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  width: 90,
                ),
                Text(
                  '\$12.58',
                  style: TextStyle(fontSize: 30, color: Colors.blue[900]),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
