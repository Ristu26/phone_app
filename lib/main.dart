import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigation_app/bottom_nav_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      home: const BottomNavScreen(),
    );
  }
}
