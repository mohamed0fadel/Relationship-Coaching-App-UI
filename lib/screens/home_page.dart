import 'package:flutter/material.dart';
import '../widgets/header_widget.dart';
import '../widgets/instructor_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppBar(), body: buildBody());
  }

  ListView buildBody() {
    return ListView(
      shrinkWrap: true,
      children: <Widget>[
        HeaderWidget(),
        SizedBox(height: 40),
        buildInstructionRow(),
        SizedBox(height: 10),
        buildGridView(),
      ],
    );
  }

  Container buildGridView() {
    return Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 2,
          mainAxisSpacing: 4,
          shrinkWrap: true,
          primary: false,
          childAspectRatio: 1/1.2,
          children: <Widget>[
            InstructorCard(
                name: 'Name 1',
                status: 'Available',
                image: 'assets/pics/1.jpg'),
            InstructorCard(
                name: 'Name 2',
                status: 'Unavailable',
                image: 'assets/pics/1.jpg'),
            InstructorCard(
                name: 'Name 3',
                status: 'Available',
                image: 'assets/pics/1.jpg'),
            InstructorCard(
                name: 'Name 4',
                status: 'Available',
                image: 'assets/pics/1.jpg'),
            InstructorCard(
                name: 'Name 1',
                status: 'Unavailable',
                image: 'assets/pics/1.jpg'),
            InstructorCard(
                name: 'Name 2',
                status: 'Available',
                image: 'assets/pics/1.jpg'),
          ],
        ),
      );
  }

  Container buildInstructionRow() {
    return Container(
      padding: EdgeInsets.only(left: 25, right: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'MY COACHES',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
              fontFamily: 'Quicksand',
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'VIEW PAST SESSIONS',
            style: TextStyle(
              color: Colors.green,
              fontSize: 12,
              fontFamily: 'Quicksand',
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.white,
      title: FlutterLogo(colors: Colors.green, size: 25),
      leading: IconButton(
          icon: Icon(Icons.arrow_back), color: Colors.grey, onPressed: () {}),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.menu), color: Colors.grey, onPressed: () {})
      ],
    );
  }
}
