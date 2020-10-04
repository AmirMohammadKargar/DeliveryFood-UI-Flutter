import 'package:flutter/material.dart';

class RowMenuReommended extends StatelessWidget {
  const RowMenuReommended({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          RecomendedItem(image: '9'),
          RecomendedItem(image: '7'),
          RecomendedItem(image: '9'),
          RecomendedItem(image: '7'),
        ],
      ),
    );
  }
}

class RecomendedItem extends StatelessWidget {
  const RecomendedItem({Key key, this.image}) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25, left: 15, right: 15, top: 5),
      child: Container(
        width: 280,
        height: 130,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.35),
              blurRadius: 4.5,
              spreadRadius: 1,
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      'Naturales',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_border,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 123),
                  child: Text(
                    'Malteadas tropicales',
                    style: TextStyle(
                      color: Colors.blue[900],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 123),
                  child: Text(
                    'Elaborado con jugos naturales',
                    style: TextStyle(
                      fontSize: 9,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        '\$12.58',
                        style: TextStyle(
                          color: Colors.blue[900],
                        ),
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      Container(
                        width: 35,
                        height: 35,
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
                            size: 20,
                          ),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 10,
              child: Image(
                image: AssetImage('assets/images/$image.png'),
                width: 115,
              ),
            )
          ],
        ),
      ),
    );
  }
}
