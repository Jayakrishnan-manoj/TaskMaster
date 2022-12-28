import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:task_master/screens/notes_screen.dart';
import 'package:task_master/screens/task_screen.dart';
import 'package:task_master/widgets/bottom_navigation.dart';
import 'package:task_master/widgets/reusables.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static ValueNotifier<int> selectedIndex = ValueNotifier(0);

  final _screens = const [
    TaskScreen(),
    NotesScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        onPressed: () {},
        backgroundColor: Theme.of(context).primaryColor,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigation(),
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: selectedIndex,
          builder: (BuildContext ctx, int updatedIndex, _) {
            return _screens[updatedIndex];
          },
        ),
      ),
    );
  }
}
