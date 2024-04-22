import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PersonDetail extends StatelessWidget {
  String Name, ImageUrl, Bio, Gender;
  // String Hobbies;
  int Age;
  PersonDetail({
    super.key,
    required this.Gender,
    required this.Age,
    required this.Bio,
    required this.ImageUrl,
    required this.Name,
    // required this.Hobbies,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${Name} Details',
          style: TextStyle(
            fontWeight: FontWeight.w800,
          ),
        ),
        foregroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage(ImageUrl),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            Name,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(right: 12, left: 12),
            child: Text(
              Bio,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            color: Colors.black,
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${Age.toString()} Years old',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                Text(
                  Gender.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Colors.black,
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
