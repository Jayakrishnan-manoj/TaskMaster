import 'package:flutter/material.dart';

class Task {
  final String id;
  final String title;
  final String description;
  final DateTime date;
  final TimeOfDay time;

  Task({
    required this.id,
    required this.title,
    required this.description,
    required this.date,
    required this.time,
  });
}
