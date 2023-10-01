import 'package:hive/hive.dart';

class ToDoDataBase {
  List toDoList = [];

  // refernicng hive box
  final _myBox = Hive.box('myBox');

  //method is run when app is opened for the first time ever
  void createInitialData(){
    toDoList = [
      ["Make a ToDo List", true],
      ["Check me off", true],
    ];
  }

  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  void updateDataBase(){
    _myBox.put("TODOLIST",toDoList);
  }
}