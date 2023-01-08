import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../helpers/task.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({
    required this.task,
    required this.deleteTask,
  });

  final Task task;
  final Function deleteTask;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Card(
          shadowColor: Colors.indigo,
          elevation: 10,
          child: Column(
            children: [
              ListTile(
                title: Text(task.title),
                subtitle: Text(task.description),
                trailing: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(DateFormat.yMMMd().format(task.date)),
                    const SizedBox(width: 20),
                    Text(task.time.format(context)),
                  ],
                ),
              ),
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.edit,
                      color: Theme.of(context).primaryColor,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                    onPressed: () {
                      deleteTask(task.id);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
