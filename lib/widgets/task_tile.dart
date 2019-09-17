import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile(this.taskText);

  final String taskText;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text('$taskText'),
        trailing: Checkbox(value: false, onChanged: null),
      ),
    );
  }
}
