import 'package:flutter/material.dart';

import 'numberTile.dart';

class TablePage extends StatelessWidget {
  const TablePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Multiplication Table"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Click on a Number to see its table.",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Wrap(
              alignment: WrapAlignment.spaceEvenly,
              children: [
                for (int i = 1; i <= 10; i++)
                  NumberTile(
                    numberToShow: i,
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
