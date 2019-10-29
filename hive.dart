import 'box.dart';

class Hive{
  String _name;
  String _type;
  int _noOfFloors;
  int _queenYear;
  List <Box> boxes = new List();

  set queenYear(int year) => this._queenYear = year;

  int get queenYear => _queenYear;

  set noOfFloors(int floors) => this._noOfFloors = floors;

  int get noOfFloors => _noOfFloors;

  String get type => _type;

  set type(String type)=>this._type = type;

  String get hiveName => _name;

  set hiveName(String name)=> this._name = name;

  void describeHive(int i){
    print("$i. ${type[0].toUpperCase()}${type.substring(1)} hive $hiveName "
        "with: $noOfFloors ${noOfFloors==1? "floor" : "floors"}");
  }
}