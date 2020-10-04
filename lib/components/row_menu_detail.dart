import 'package:flutter/material.dart';

class RowMenu extends StatelessWidget {
  const RowMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            RowScrollMenu(title: 'Bread', image: '10'),
            RowScrollMenu(title: 'Meat', image: '12'),
            RowScrollMenu(title: 'Onion', image: '11'),
            RowScrollMenu(
              title: 'Bread',
              image: '10',
            ),
          ],
        ));
  }
}

class RowScrollMenu extends StatelessWidget {
  const RowScrollMenu({
    Key key,
    this.image,
    this.title,
  }) : super(key: key);
  final String image, title;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 20, left: 30, right: 2),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Container(
                height: 150,
                width: 140,
                child: Image(
                  image: AssetImage('assets/images/$image.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 8),
              child: Text(
                '$title',
                style: TextStyle(color: Colors.blue[900]),
              ),
            ),
          ],
        ));
  }
}
