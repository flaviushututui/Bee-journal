import 'frame.dart';

class Box{
  int _noOfFrames;
  int _number;
  List <Frame> frames;

  set noOfFrames(int noFrames)=> this._noOfFrames = noFrames;

  int get noOfFrames=> _noOfFrames;

  set number(int nr) => this._number = nr;

  int get number => _number;
}