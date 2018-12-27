import 'package:flutter/material.dart';

import './inspectiondetails.dart';


ListTile inspectionTile(Inspection inspection) {
  return ListTile(
    contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
    leading: Container(
      child: Icon(Icons.search, size: 30.0,),
      padding: EdgeInsets.only(right: 12.0),
      decoration: BoxDecoration(border: Border(right: BorderSide(width: 1.0))),
    ),
    title: Text(inspection.type, style: TextStyle(fontSize: 20.0),),
    subtitle: Text(inspection.type, style: TextStyle(fontSize: 15.0),),
    trailing: Icon(
      Icons.keyboard_arrow_right,
      size: 30.0,
    ),
  );
}
