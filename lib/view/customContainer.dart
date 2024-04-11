import 'package:flutter/material.dart';

class CircleContainer extends StatelessWidget {
  final double? left;
  final double? top;
  final double height;
  final double width;
  final Color? color;
  final Widget? child;
  CircleContainer(
      {super.key,
      required this.height,
      required this.width,
      this.top,
      this.left,
      this.color,
      this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Positioned(
        left: left,
        top: top,
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(200),
          ),
          child: child,
        ),
      ),
    );
  }
}
