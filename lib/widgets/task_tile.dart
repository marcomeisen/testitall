import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  TaskTile(this.taskText);

  final String taskText;

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  void checkBoxCallBack(bool checkboxState) {
    setState(() {
      isChecked = checkboxState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          '${widget.taskText}',
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: TaskCheckbox(
            checkBoxState: isChecked, toggleCheckboxState: checkBoxCallBack),
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkBoxState;
  final Function toggleCheckboxState;

  TaskCheckbox({this.checkBoxState, this.toggleCheckboxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
        value: checkBoxState,
        activeColor: Colors.purple,
        onChanged: toggleCheckboxState);
  }
}
