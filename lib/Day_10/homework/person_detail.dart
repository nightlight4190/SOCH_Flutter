import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PersonDetail extends StatefulWidget {
  String Name, ImageUrl, Bio, Gender;
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
  State<PersonDetail> createState() => _PersonDetailState();
}

class _PersonDetailState extends State<PersonDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${widget.Name} Details',
          style: TextStyle(
            fontWeight: FontWeight.w800,
          ),
        ),
        foregroundColor: Colors.teal,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage(widget.ImageUrl),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            widget.Name,
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
              widget.Bio,
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
                  '${widget.Age.toString()} Years old',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                Text(
                  widget.Gender.toString(),
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
