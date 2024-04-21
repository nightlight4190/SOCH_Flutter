import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DynamicPosition extends StatefulWidget {
  const DynamicPosition({super.key});

  @override
  State<DynamicPosition> createState() => _DynamicPositionState();
}

class _DynamicPositionState extends State<DynamicPosition> {
  double _cTop = 20;
  double _cBottom = 20;
  double _cLeft = 2;
  double _cRight = 40;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Position changing container'),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width,
            color: Colors.teal,
            child: Stack(
              children: [
                Positioned(
                  top: _cTop,
                  bottom: _cBottom,
                  left: _cLeft,
                  right: _cRight,
                  child: Icon(
                    Icons.circle,
                    size: 40,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width,
            // color: Colors.amber,
            child: Stack(
              children: [
                Positioned(
                  right: 10,
                  left: 10,
                  top: 40,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_upward,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.circle,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_downward,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 35,
                  // right: 40,
                  left: 140,
                  bottom: 60,
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back,
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   double _circlePositionX = 0.0;
//   double _circlePositionY = 0.0;

//   void _moveCircle(Direction direction) {
//     setState(() {
//       switch (direction) {
//         case Direction.left:
//           _circlePositionX -= 10;
//           break;
//         case Direction.right:
//           _circlePositionX += 10;
//           break;
//         case Direction.up:
//           _circlePositionY -= 10;
//           break;
//         case Direction.down:
//           _circlePositionY += 10;
//           break;
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Move Circle'),
//       ),
//       body: Stack(
//         children: [
//           Positioned(
//             left: _circlePositionX,
//             top: _circlePositionY,
//             child: Container(
//               width: 50,
//               height: 50,
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//                 shape: BoxShape.circle,
//               ),
//             ),
//           ),
//         ],
//       ),
//       bottomNavigationBar: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           IconButton(
//             onPressed: () => _moveCircle(Direction.left),
//             icon: Icon(Icons.arrow_back),
//           ),
//           IconButton(
//             onPressed: () => _moveCircle(Direction.up),
//             icon: Icon(Icons.arrow_upward),
//           ),
//           IconButton(
//             onPressed: () => _moveCircle(Direction.down),
//             icon: Icon(Icons.arrow_downward),
//           ),
//           IconButton(
//             onPressed: () => _moveCircle(Direction.right),
//             icon: Icon(Icons.arrow_forward),
//           ),
//         ],
//       ),
//     );
//   }
// }

// enum Direction {
//   left,
//   right,
//   up,
//   down,
// }
