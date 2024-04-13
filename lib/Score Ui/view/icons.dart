import 'package:flutter/material.dart';

import 'customContainer.dart';

class IconElements extends StatelessWidget {
  final Color? color1;
  final Color? color2;
  final IconData? icon1;
  final IconData? icon2;
  final String text1;
  final String text2;
  IconElements(
      {super.key,
      this.color1,
      this.color2,
      this.icon1,
      this.icon2,
      required this.text1,
      required this.text2});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleContainer(
          height: 50,
          width: 50,
          color: color1,
          child: Icon(
            icon1,
            color: Colors.white,
          ),
        ),
        Text(
          text1,
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 50,
        ),
        CircleContainer(
          height: 50,
          width: 50,
          color: color2,
          child: Icon(
            icon2,
            color: Colors.white,
          ),
        ),
        Text(
          text2,
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
