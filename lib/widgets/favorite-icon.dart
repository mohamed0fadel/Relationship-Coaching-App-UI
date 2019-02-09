import 'package:flutter/material.dart';

class FavoriteIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      children: <Widget>[
        Positioned(
          top: -8,
          left: 12,
          child: RotationTransition(
            turns: AlwaysStoppedAnimation(15 / 360),
            child: Icon(Icons.favorite, color: Colors.red),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 0.4, color: Colors.white)),
          child: Icon(
            Icons.favorite,
            color: Colors.red,
          ),
        )
      ],
    );
  }
}
