import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:task_master/screens/home_screen.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: HomeScreen.selectedIndex,
        builder: (BuildContext ctx, int updatedIndex, Widget? _) {
          return BottomNavigationBar(
            selectedItemColor: Theme.of(context).primaryColor,
            unselectedItemColor: Colors.grey,
            currentIndex: updatedIndex,
            onTap: (newIndex) {
              HomeScreen.selectedIndex.value = newIndex;
            },
            items: const [
              BottomNavigationBarItem(
                label: "Task",
                icon: Icon(
                  Icons.task,
                ),
              ),
              BottomNavigationBarItem(
                label: "Notes",
                icon: Icon(
                  FeatherIcons.paperclip,
                ),
              ),
            ],
          );
        });
  }
}
