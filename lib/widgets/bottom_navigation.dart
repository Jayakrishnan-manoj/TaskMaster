import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:task_master/screens/notes/notes_screen.dart';
import 'package:task_master/widgets/reusables.dart';

import '../screens/tasks/task_screen.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Theme.of(context).primaryColor,
      shape: const CircularNotchedRectangle(),
      notchMargin: 5,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () => nextScreenReplace(context, const TaskScreen()),
            icon: const Icon(
              Icons.task,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () => nextScreenReplace(context, const NotesScreen()),
            icon: const Icon(
              FeatherIcons.paperclip,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
