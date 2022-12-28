import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:task_master/widgets/task_card.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
