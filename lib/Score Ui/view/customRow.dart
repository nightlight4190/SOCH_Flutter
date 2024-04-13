import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  Color? color;
  String text;
  String subText;
  CustomRow({
    super.key,
    this.color,
    required this.text,
    required this.subText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.circle,
          size: 15,
          color: color,
        ),
        SizedBox(
          width: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: color,
              ),
            ),
            Text(
              subText,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 15,
              ),
            )
          ],
        )
      ],
    );
  }
}
