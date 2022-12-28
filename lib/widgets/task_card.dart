import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TaskCard extends StatelessWidget {
  final String title;
  final String brief;
  final String date;
  final String time;
  const TaskCard({
    super.key,
    required this.title,
    required this.brief,
    required this.date,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Card(
          child: Column(
            children: [
              ListTile(
                title: Text(title),
                subtitle: Text(brief),
                trailing: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(date),
                    SizedBox(width: 10),
                    Text(time),
                  ],
                ),
              ),
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.category),
                    onPressed: () {
                      // Add code to handle category button press here
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      // Add code to handle delete button press here
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () {
                      // Add code to handle edit button press here
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
