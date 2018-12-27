import 'package:flutter/material.dart';
import './inspectionlist.dart';

//Class that creates the Grid with the Hives
class HiveGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(8.0),
      itemBuilder: (context, int index) {
        return HiveOver();
      },
      itemCount: myHives.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
    );
  }
}

//Class for the Hive Overview widget from Homepage
class HiveOver extends StatelessWidget {
  Color color;
  int year;

  @override
  Widget build(BuildContext context) {
    //Use conditionals to set the color according to the year
    if (year % 5 == 0) {
      color = Color(0xFF4AAAE7);
    } else if (year% 5 == 1) {
      color = Color(0xFFFFFFFF);
    } else if (year % 5 == 2) {
      color = Color(0xFFFFE13D);
    } else if (year % 5 == 3) {
      color = Color(0xFFE13C47);
    } else {
      color = Color(0xFF50A030);
    }
    ;
    return Card(
      elevation: 3.0,
      margin: EdgeInsets.all(5.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      color: color,
      child: InkWell(
        borderRadius: BorderRadius.circular(15.0),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => InspectionsList()),
          );
        },
        splashColor: Colors.black54,
        child: Card(
          elevation: 3.0,
          color: Colors.white,
          margin: EdgeInsets.all(6.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: Container(
            child: Center(
              child: Text(
                (myHives[index].number).toString(),
                style: TextStyle(fontSize: 25.0, letterSpacing: 3.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Hive {
  int number;
  String origin;
  int queenYear;
  String queenBreed;
  int frames;

  Hive(
      {Key:Key, this.number, this.queenYear, this.queenBreed, this.frames, this.origin});
}

List<Hive> myHives = [
  Hive(
      number: 1,
      frames: 10,
      queenYear: 2015,
      origin: "roi",
      queenBreed: "buckfast"),
  Hive(
      number: 2,
      frames: 10,
      queenYear: 20198,
      origin: "cumparat",
      queenBreed: "buckfast"),
  Hive(
      number: 3,
      frames: 10,
      queenYear: 2016,
      origin: "roi",
      queenBreed: "buckfast")
];
