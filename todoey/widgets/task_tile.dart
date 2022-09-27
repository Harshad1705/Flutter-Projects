import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final bool isChecked;
  final String taskTitle;
  final Function checkBoxCallback;
  TaskTile({required this.taskTitle , required this.isChecked , required this.checkBoxCallback});

  // void checkBoxCallBack(bool checkBoxState) {
  //   setState(() {
  //     isChecked = checkBoxState;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (value){
          checkBoxCallback(value);
        },
      ),
    );
  }
}

// (bool checkBoxState) {
// setState(() {
// isChecked = checkBoxState;
// });
