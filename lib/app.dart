import 'package:day_5_hw/Day_6/homework/chat.dart';
import 'package:day_5_hw/Day_9/classwork/stateful.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      home: Stateful(),
    );
  }
}
