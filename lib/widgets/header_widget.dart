import 'package:flutter/material.dart';
import '../widgets/favorite-icon.dart';

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          alignment: Alignment(0, -0.4),
          height: 100,
          color: Colors.white,
          child: Text(
            'Get coaching',
            style: TextStyle(fontSize: 20, fontFamily: 'Montserrat'),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(25, 90, 25, 0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.grey,
                blurRadius: 8.0,
              )
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(25, 25, 5, 5),
                    child: Text(
                      'YOU HAVE',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  buildNumber(),
                ],
              ),
              SizedBox(width: 85),
              buildBuyMoreButton(),
            ],
          ),
        )
      ],
    );
  }

  Container buildBuyMoreButton() {
    return Container(
      width: 125,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.greenAccent[100].withOpacity(0.5),
          borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Text(
          'Buy more',
          style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
              fontFamily: 'Quicksand'),
        ),
      ),
    );
  }

  Row buildNumber() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(25, 40, 5, 25),
          child: Text(
            '206',
            style: TextStyle(
              color: Colors.black,
              fontSize: 38,
              fontFamily: 'Quicksand',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(width: 4),
        Container(
          margin: EdgeInsets.only(top: 15),
          child: FavoriteIcon(),
        )
      ],
    );
  }
}
