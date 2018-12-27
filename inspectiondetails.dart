import 'package:flutter/material.dart';

class Inspection extends InheritedWidget {
  //Outside
  int polen; //Quality appreciation from 0-10
  int entranceActivity; //Quality appreciation from 0-10

  //Inside
  String type;
  int behavior; //Quality appreciation from 0-10
  int occupiedFrames; //Number of occupied frames
  int drones; //Quality appreciation from 0-10
  int eggLaying; //Quality appreciation from 0-10
  int honeyCells; //Quality appreciation from 0-10
  int parasites; //Quality appreciation from 0-10

  Inspection(polen, entranceActivity, type, behavior, occupiedFrames, drones,
      eggLaying, honeyCells, parasites)
      : super(child);

  @override
  bool updateShouldNotify(Inspection old) =>
      polen != old.polen ||
      entranceActivity != old.entranceActivity ||
      type != old.type ||
      behavior != old.behavior ||
      occupiedFrames != old.occupiedFrames ||
      drones != old.drones ||
      eggLaying != old.eggLaying ||
      honeyCells != old.honeyCells ||
      parasites != old.parasites;
}
