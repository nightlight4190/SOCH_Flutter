import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Stateful extends StatefulWidget {
  const Stateful({super.key});

  @override
  State<Stateful> createState() => _StatefulState();
}

class _StatefulState extends State<Stateful> {
  int noOfballs = 15;
  double circleSize = 50;
  bool isBgGreen = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful widgets'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.end,
                children: [
                  for (int i = 0; i < noOfballs; i++)
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10, bottom: 10, top: 20, right: 10),
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        height: circleSize,
                        width: circleSize,
                        decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.black),
                          borderRadius: BorderRadius.circular(circleSize / 2),
                          color: isBgGreen ? Colors.green : null,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Circle Size'),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        if (circleSize == 30) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Cannot go less than 30'),
                            ),
                          );
                          return;
                        }
                        circleSize = circleSize - 10;
                        setState(() {});
                      },
                      child: Container(
                        height: 40,
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                        child: Icon(Icons.remove),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1),
                        borderRadius: BorderRadius.only(
                            // topLeft: Radius.circular(10),
                            // bottomLeft: Radius.circular(10),
                            ),
                      ),
                      child: Center(
                        child: Text(
                          circleSize.toString(),
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (circleSize == 100) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Cannot go more than 100'),
                            ),
                          );
                          return;
                        }
                        circleSize = circleSize + 10;
                        setState(() {});
                      },
                      child: Container(
                        height: 40,
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                        child: Icon(Icons.add),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('No of Balls'),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        if (noOfballs == 0) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Cannot go less than 0'),
                            ),
                          );
                          return;
                        }
                        noOfballs = noOfballs - 1;
                        setState(() {});
                      },
                      child: Container(
                        height: 40,
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                        child: Icon(Icons.remove),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1),
                        borderRadius: BorderRadius.only(
                            // topLeft: Radius.circular(10),
                            // bottomLeft: Radius.circular(10),
                            ),
                      ),
                      child: Center(
                        child: Text(
                          noOfballs.toString(),
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (noOfballs == 100) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Cannot go more than 100'),
                            ),
                          );
                          return;
                        }
                        noOfballs = noOfballs + 1;
                        setState(() {});
                      },
                      child: Container(
                        height: 40,
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                        child: Icon(Icons.add),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Bg Color Green'),
                Switch(
                  value: isBgGreen,
                  onChanged: (f) {
                    isBgGreen = f;
                    setState(() {});
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
