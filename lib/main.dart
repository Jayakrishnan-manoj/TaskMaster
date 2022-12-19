import 'package:flutter/material.dart';
import 'package:task_master/screens/sign_in.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor:const  Color.fromRGBO(208, 66, 255, 1),
        scaffoldBackgroundColor:const  Color.fromRGBO(249,229,255,1)
      ),
      home: SignInScreen(),
    );
  }
}
