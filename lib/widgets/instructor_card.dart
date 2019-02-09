import 'package:flutter/material.dart';

class InstructorCard extends StatelessWidget {
  final String name;
  final String status;
  final String image;

  InstructorCard({this.name, this.status, this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: <Widget>[
            SizedBox(height: 14),
            buildImageStack(),
            buildDetails(),
            buildExpanded()
          ],
        ));
  }

  Expanded buildExpanded() {
    return Expanded(
            child: Container(
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: status == 'Available' ? Colors.green : Colors.grey,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Center(
                child: Text(
                  'Request',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Quicksand'
                  ),
                ),
              ),
            ),
          );
  }

  Widget buildDetails() {
    return Column(
      children: <Widget>[
        SizedBox(height: 20),
        Text(
          name,
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontFamily: 'Quicksand',
              fontSize: 18),
        ),
        SizedBox(height: 10),
        Text(
          'I\'am $status now',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontFamily: 'Quicksand',
              fontSize: 12),
        ),
        SizedBox(height: 18),
      ],
    );
  }

  Stack buildImageStack() {
    return Stack(
      children: <Widget>[
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(40),
              image: DecorationImage(
                image: AssetImage(image),
              )),
        ),
        Container(
          margin: EdgeInsets.only(left: 48),
          height: 22,
          width: 22,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: status == 'Available' ? Colors.green : Colors.amber,
              border: Border.all(color: Colors.white, width: 4)),
        )
      ],
    );
  }
}
