import 'package:flutter/material.dart';

//using list view

List<String> fruits = [
  'Apple',
  'Mango',
  'Orange',
  'Guava',
  'Peach',
  'Apple',
  'Mango',
  'Orange',
  'Guava',
  'Peach',
  'Apple',
  'Mango',
  'Orange',
  'Guava',
  'Peach',
  'Apple',
  'Mango',
  'Orange',
  'Guava',
  'Guava',
  'Peach',
];

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({super.key});

  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: fruits.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            fruits[index] = fruits[index] + "o";
            setState(() {});
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "$index: ${fruits[index]}",
              style: TextStyle(fontSize: 20),
            ),
          ),
        );
      },
    ));
  }
}
