import 'package:day_5_hw/Score%20Ui/view/scoreUi.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScoreUi(),
    );
  }
}
