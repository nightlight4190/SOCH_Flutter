import 'package:flutter/material.dart';

//using column

List<String> fruits = [
  'Apple',
  'Mango',
  'Orange',
  'Guava',
  'Peach',
];

class ListDemo extends StatefulWidget {
  const ListDemo({super.key});

  @override
  State<ListDemo> createState() => _ListDemoState();
}

class _ListDemoState extends State<ListDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Day 10'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          for (int i = 0; i < fruits.length; i++)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  fruits[i] = fruits[i] + "o";
                  setState(() {});
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    fruits[i],
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
