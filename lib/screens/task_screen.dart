import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:task_master/widgets/app_drawer.dart';
import 'package:task_master/widgets/reusables.dart';
import 'package:task_master/widgets/task_card.dart';

import '../widgets/bottom_navigation.dart';
import 'new_task_form.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
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
        onPressed: ()=>nextScreen(context, TaskForm()),
        backgroundColor: Theme.of(context).primaryColor,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigation(),
      body: Column(
        children: [
          TaskCard(title: "dummy",brief: "just dummy",date: "22-10-23",time: "11:10 AM",),
          TaskCard(title: "dummy",brief: "just dummy",date: "22-10-23",time: "11:10 AM",),
          TaskCard(title: "dummy",brief: "just dummy",date: "22-10-23",time: "11:10 AM",),
        ],
      ),
      
    );
  }
}
