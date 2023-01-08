import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:task_master/helpers/task.dart';
import 'package:task_master/widgets/app_drawer.dart';
import 'package:task_master/widgets/reusables.dart';
import 'package:task_master/widgets/task_card.dart';

import '../../widgets/bottom_navigation.dart';
import 'new_task_form.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  final List<Task> _userTasks = [];

  List<Task> get _recentTasks {
    return _userTasks.where((tsk) {
      return tsk.date.isAfter(DateTime.now());
    }).toList();
  }

  void _addTask(String tskTitle, String tskBrief, DateTime chosenDate,
      TimeOfDay chosenTime) {
    final newTask = Task(
      id: DateTime.now().toString(),
      title: tskTitle,
      description: tskBrief,
      date: chosenDate,
      time: chosenTime,
    );

    setState(() {
      _userTasks.add(newTask);
    });
  }

  void _deleteTask(String id) {
    setState(() {
      _userTasks.removeWhere((tsk) => tsk.id == id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: const Text(
          "TaskMaster",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => nextScreen(context, TaskForm(_addTask)),
        backgroundColor: Theme.of(context).primaryColor,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigation(),
      body: Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: ListView.builder(
            itemBuilder: ((context, index) {
              return TaskCard(task: _userTasks[index], deleteTask: _deleteTask);
            }),
            itemCount: _userTasks.length,
          )),
    );
  }
}
