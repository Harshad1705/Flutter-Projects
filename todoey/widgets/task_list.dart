import 'package:flutter/material.dart';
import 'package:state_management/models/task_data.dart';
import 'package:state_management/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context , taskdata , child){
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              taskTitle: taskdata.tasks[index].name,
              isChecked:taskdata.tasks[index].isDone,
              checkBoxCallback: ( checkBoxState) {
                // setState(() {
                //   taskdata.tasks[index].toggleDone();
                // });
              },
            );
          },
          itemCount:taskdata.taskCount,
        );
      }

    );
  }
}
