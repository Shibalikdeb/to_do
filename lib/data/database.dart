import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabsae {
  List toDoList = [];
//reference our box
  final _myBox = Hive.box('mybox');
  //run this if 1st time opeing the app
  void CreateInitialData() {
    toDoList = [
      ["Make Tutorials", false],
      ["Do Excersice", false]
    ];
  }

  //load the datatbase
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //update the database
  void updateDatabase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
