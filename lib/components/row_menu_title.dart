import 'package:flutter/material.dart';

class RowMenuTitle extends StatelessWidget {
  const RowMenuTitle({Key key, this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(25, 35, 25, 20),
        child: Row(
          children: <Widget>[
            Text(
              '$title',
              style: TextStyle(color: Colors.blue[900], fontSize: 17),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {},
              child: Text('See all', style: TextStyle(color: Colors.blue)),
            )
          ],
        ),
      ),
    );
  }
}
