import 'package:flutter/material.dart';

class RowMenuPopuler extends StatelessWidget {
  const RowMenuPopuler({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          PopulerCard(
            title: 'Pizza Clásica',
            description: 'Salsa clásica de la casa',
            image: '9',
            price: '12.58',
            press: () {
              Navigator.pushNamed(context, '/second');
            },
          ),
          PopulerCard(
              title: 'Hamburguesa mix',
              description: 'Doble carne con queso',
              image: '9',
              price: '13',
              press: () {
                Navigator.pushNamed(context, '/second');
              }),
          PopulerCard(
              title: 'Pizza Clásica',
              description: 'Salsa clásica de la casa',
              image: '9',
              price: '12.58',
              press: () {
                Navigator.pushNamed(context, '/second');
              }),
          PopulerCard(
              title: 'Hamburguesa mix',
              description: 'Doble carne con queso',
              image: '9',
              price: '13',
              press: () {
                Navigator.pushNamed(context, '/second');
              }),
        ],
      ),
    );
  }
}

class PopulerCard extends StatelessWidget {
  const PopulerCard(
      {Key key,
      this.title,
      this.image,
      this.price,
      this.description,
      this.press})
      : super(key: key);
  final String title, image, price, description;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Container(
        width: 200,
        height: 280,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 0),
                color: Colors.black.withOpacity(0.15),
                spreadRadius: 0.3,
                blurRadius: 5),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            Center(
              child: Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(69),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.withOpacity(0.55),
                        blurRadius: 25,
                      ),
                    ]),
                child: Image(
                  image: AssetImage('assets/images/$image.png'),
                  width: 90,
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                '$title',
                style: TextStyle(color: Colors.blue[900], fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                '$description',
                style: TextStyle(color: Colors.blue[900], fontSize: 10),
              ),
            ),
            SizedBox(
              height: 13,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Row(
                children: <Widget>[
                  Text(
                    "\$$price",
                    style: TextStyle(
                      color: Colors.blue[900],
                      fontSize: 20,
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.35),
                          blurRadius: 5,
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(55),
                    ),
                    child: IconButton(
                      color: Colors.white,
                      icon: Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.blue[900],
                        size: 25,
                      ),
                      onPressed: () {
                        press();
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
