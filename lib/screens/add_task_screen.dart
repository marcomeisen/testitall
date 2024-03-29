import 'package:flutter/material.dart';
import 'package:test_it_all/widgets/task_tile.dart';

var task;
List<TaskTile> taskTile;

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular((20.0)),
                topRight: Radius.circular(20.0))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 35, color: Colors.purple),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              cursorColor: Colors.purple,
              onChanged: (value) {
                task = value;
                taskTile.add(task);
              },
            ),
            SizedBox(
              height: 20,
            ),
            FlatButton(
              onPressed: () {
                print(task);
              },
              child: Text(
                'Add',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              color: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}
