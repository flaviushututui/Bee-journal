import 'dart:io';
import 'hive.dart';
import 'box.dart';
import 'frame.dart';

void main() {
  enterCommand();
}

List<Hive> hives = new List();

void newHive(){
  Hive h = new Hive();
  print("Enter hive name: ");
  var name = stdin.readLineSync().toLowerCase();
  h.hiveName = name;
  print("What type of hive is it? horizontal/vertical");
  var type = stdin.readLineSync().toLowerCase();
  h.type = type;

  if(type == "vertical"){
    print("How many floors does your hive have?");
    var floors = stdin.readLineSync();
    h.noOfFloors = int.parse(floors);
    addBoxTo(h);
  }
  else if(type.toLowerCase() == "horizontal") {
    h.noOfFloors = 1;
    addBoxTo(h);
  }
  hives.add(h);
}

void addBoxTo(Hive h){
  print("How many frames per box?");
  var boxFrames = int.parse(stdin.readLineSync());

  for (int i=1; i <= h.noOfFloors; i++){
    int boxNumber = i+1;
    Box b = new Box();
    b.number = boxNumber;
    b.noOfFrames = boxFrames;
    h.boxes.add(b);
  }
}

void enterCommand(){
  print("1. Add Hive  2. List hives");

  switch(stdin.readLineSync()){
    case '1': {
      newHive();
      break;
    }
    case '2': {
      presentHives();
      break;
    }
    case '3'{
      print("What hive do you review?");
      reviewFrames(hives[int.parse(stdin.readLineSync())], )
    }
    case 'end':{
      break;
    }
  }
  enterCommand();
}

void presentHives() {
  print("You have ${hives.length} ${hives.length == 1? "hive": "hives"}:");
  hives.forEach((hive) => hive.describeHive(hives.indexOf(hive)+1));
  print("");
}

void reviewFrames(Hive h, int b){
  for (int i = 0; i < h.boxes[b].noOfFrames; i++) {
    print("1-5 stars for eggs");
    int eggs = int.parse(stdin.readLineSync());
    print("1-5 start for honey");
    int honey = int.parse(stdin.readLineSync());
    Frame f = new Frame(i,eggs, honey);
    h.boxes[b].frames.add(f);
  }
}

