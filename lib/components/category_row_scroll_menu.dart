import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ScrollMenuCategory extends StatelessWidget {
  const ScrollMenuCategory({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              RowScrollItem(
                title: 'Tacos',
                image: '1',
                color: '#cdf7ab',
              ),
              RowScrollItem(
                title: 'Frias',
                image: '2',
                color: '#6ae3f0',
              ),
              RowScrollItem(
                title: 'Burger',
                image: '3',
                color: '#f2ebab',
              ),
              RowScrollItem(
                title: 'Pizza',
                image: '4',
                color: '#eda6cb',
              ),
              RowScrollItem(
                title: 'Burritos',
                image: '5',
                color: '#e292f2',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RowScrollItem extends StatelessWidget {
  const RowScrollItem({
    Key key,
    this.title,
    this.image,
    this.color,
  }) : super(key: key);
  final String title, image, color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Container(
              height: 85,
              decoration: BoxDecoration(color: Hexcolor('$color')),
              child: FlatButton(
                onPressed: () {},
                child: Image(
                  image: AssetImage('assets/images/$image.png'),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '$title',
            style: TextStyle(color: Colors.blue[900]),
          )
        ],
      ),
    );
  }
}
