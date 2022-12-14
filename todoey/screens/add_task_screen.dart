
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/models/task.dart';
import 'package:state_management/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    String newTaskTitle = '';

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newValue){
                newTaskTitle =newValue;
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            FlatButton(
              onPressed: () {
                Provider.of<TaskData>(context).addData(newTaskTitle);
                Navigator.pop(context);
              },
              color: Colors.lightBlueAccent,
              child: Text(
                'ADD',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
