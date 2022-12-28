import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:task_master/screens/home_screen.dart';
import 'package:task_master/widgets/reusables.dart';

import '../screens/task_screen.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: HomeScreen.selectedIndex,
        builder: (BuildContext ctx, int updatedIndex, Widget? _) {
          return BottomAppBar(
        color: Theme.of(context).primaryColor,
        shape: const CircularNotchedRectangle(),
        notchMargin: 5,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed:()=> nextScreen(context, TaskScreen()),
              icon: const Icon(
                Icons.task,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                FeatherIcons.paperclip,
                color: Colors.white,
              ),
            )
          ],
        ),
      );
        });
  }
}
