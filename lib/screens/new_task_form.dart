import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TaskForm extends StatefulWidget {
  const TaskForm({super.key});

  @override
  State<TaskForm> createState() => _TaskFormState();
}

class _TaskFormState extends State<TaskForm> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();
  DateTime? _selectedDate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Card(
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Task Name",
                  ),
                  controller: titleController,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Description",
                  ),
                  controller: descController,
                ),
                Container(
                    child: Row(
                  children: [
                    Text(
                      _selectedDate == null
                          ? "No Date Chosen"
                          : DateFormat.yMd().format(_selectedDate as DateTime),
                    ),
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
