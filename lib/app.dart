import 'package:flutter/material.dart';
import 'package:healty_food_tracker_app/second_page.dart';

class FoodTrackerApp extends StatelessWidget {
  const FoodTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SecondPage(),
    );
  }
}
