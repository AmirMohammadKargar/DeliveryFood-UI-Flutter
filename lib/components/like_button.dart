import 'package:flutter/material.dart';

class LikeButton extends StatelessWidget {
  const LikeButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.35),
            blurRadius: 5,
          )
        ],
        color: Colors.red[400],
        borderRadius: BorderRadius.circular(55),
      ),
      child: IconButton(
        icon: Icon(
          Icons.favorite_border,
          color: Colors.white,
          size: 30,
        ),
        onPressed: () {},
      ),
    );
  }
}
