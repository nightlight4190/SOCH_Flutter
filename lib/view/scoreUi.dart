import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'customContainer.dart';
import 'icons.dart';

class ScoreUi extends StatelessWidget {
  const ScoreUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Stack(
          children: [
            Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadiusDirectional.only(
                        bottomEnd: Radius.circular(20),
                        bottomStart: Radius.circular(20),
                      ),
                    ),
                    child: Stack(
                      children: [
                        CircleContainer(
                          left: -80,
                          top: -20,
                          height: 150,
                          width: 150,
                          color: Color.fromARGB(255, 128, 105, 169)
                              .withOpacity(0.5),
                        ),
                        CircleContainer(
                          left: 80,
                          top: -100,
                          height: 150,
                          width: 150,
                          color: Color.fromARGB(255, 128, 105, 169)
                              .withOpacity(0.5),
                        ),
                        CircleContainer(
                          left: 220,
                          top: 30,
                          height: 50,
                          width: 50,
                          color: Color.fromARGB(255, 128, 105, 169)
                              .withOpacity(0.5),
                        ),
                        CircleContainer(
                          left: 320,
                          top: 100,
                          height: 200,
                          width: 200,
                          color: Color.fromARGB(255, 128, 105, 169)
                              .withOpacity(0.5),
                        ),
                        CircleContainer(
                          left: 100,
                          top: 100,
                          height: 200,
                          width: 200,
                          color: Color.fromARGB(255, 128, 105, 169)
                              .withOpacity(0.6),
                        ),
                        CircleContainer(
                          left: 120,
                          top: 120,
                          height: 160,
                          width: 160,
                          color: Color.fromARGB(255, 167, 156, 186)
                              .withOpacity(0.6),
                        ),
                        Positioned(
                          top: 135,
                          left: 135,
                          child: Container(
                            height: 130,
                            width: 130,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 236, 226, 226),
                              borderRadius: BorderRadius.circular(200),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Your Score',
                                  style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      '150',
                                      style: TextStyle(
                                        color: Colors.deepPurple,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 40,
                                      ),
                                    ),
                                    Text('pt'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 120,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconElements(
                      color1: Colors.green,
                      icon1: Icons.replay,
                      text1: 'Play Again',
                      color2: Colors.blue,
                      icon2: Icons.file_copy,
                      text2: 'Generate Pdf',
                    ),
                    IconElements(
                      color1: Colors.orange,
                      icon1: Icons.remove_red_eye,
                      text1: 'Review Answer',
                      color2: Colors.purple,
                      icon2: Icons.home_outlined,
                      text2: 'Generate Pdf',
                    ),
                    IconElements(
                      color1: Colors.indigo,
                      icon1: Icons.share,
                      text1: 'Play Again',
                      color2: Colors.grey,
                      icon2: Icons.leaderboard_outlined,
                      text2: 'Generate Pdf',
                    ),
                  ],
                ),
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 150,
                width: 330,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 8,
                      color: Colors.deepPurple,
                      spreadRadius: 1,
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}