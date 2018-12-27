import 'package:flutter/material.dart';
import './inspectiontile.dart';


class InspectionsList extends StatefulWidget {
  final String title;

  //constructor
  InspectionsList({Key key, this.title}) : super(key: key);

  //create state function
  @override
  _InspectionList createState() => _InspectionList();
}

class _InspectionList extends State {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFAE2),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.yellow,
        title: Text(
          'Bee Journal',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            elevation: 6.0,
            child: InkWell(
              onTap: () {},
              splashColor: Colors.black26,
//              child: Container(
//                child: inspectionTile(inspections[index]),
//              ),
            ),
          );
        },
      ),
    );
  }
}
