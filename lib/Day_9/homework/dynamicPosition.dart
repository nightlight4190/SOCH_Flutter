import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DynamicPosition extends StatefulWidget {
  const DynamicPosition({super.key});

  @override
  State<DynamicPosition> createState() => _DynamicPositionState();
}

class _DynamicPositionState extends State<DynamicPosition> {
  double _cTop = -20;
  double _cBottom = 80;
  double _cLeft = -40;
  double _cRight = 200;

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
            color: Color.fromARGB(255, 230, 239, 238),
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
                    color: Colors.teal,
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
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {
                          _cTop = _cTop - 100;
                          setState(() {});
                        },
                        icon: Icon(
                          Icons.arrow_upward,
                          color: Colors.teal,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          _cBottom = 40;
                          _cLeft = 40;
                          _cRight = 40;
                          _cTop = 40;
                          setState(() {});
                        },
                        icon: Icon(
                          Icons.circle,
                          color: Colors.teal,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          _cBottom = _cBottom - 100;
                          setState(() {});
                        },
                        icon: Icon(
                          Icons.arrow_downward,
                          color: Colors.teal,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {
                          _cLeft = _cLeft - 100;
                          setState(() {});
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.teal,
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      IconButton(
                        onPressed: () {
                          _cRight = _cRight - 100;
                          setState(() {});
                        },
                        icon: Icon(
                          Icons.arrow_forward,
                          color: Colors.teal,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
