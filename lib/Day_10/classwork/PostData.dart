import 'package:day_5_hw/Day_10/classwork/PostDescription.dart';
import 'package:flutter/material.dart';

import 'post_string.dart';

class PostData extends StatelessWidget {
  const PostData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(12),
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PostDescription(
                      title: posts[index]['title'],
                      body: posts[index]['body'],
                    ),
                  ),
                );
              },
              leading: Text(
                posts[index]['id'].toString(),
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              title: Text(
                posts[index]['title'],
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
