import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String imgUrl = "https://picsum.photos/200/300?random=";
    Color primaryColor = Color.fromARGB(255, 59, 33, 229);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          left: 5,
        ),
        child: Container(
          color: Color.fromARGB(255, 248, 247, 247),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          // color: Colors.red,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Icon(
                        Icons.arrow_back,
                        color: primaryColor,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          'Alan Clark',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'Online',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(imgUrl),
                            fit: BoxFit.cover,
                          ),
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(200),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    chatContainer(
                      height: 26,
                      width: 60,
                      text: 'Hi Alan ',
                      radius: 20,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    chatContainer(
                      height: 55,
                      width: MediaQuery.of(context).size.width * 0.52,
                      text: 'I am Jason, here to help you find new friends',
                      radius: 10,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 28,
                      width: MediaQuery.of(context).size.width * 0.52,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 233, 237, 245),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 4,
                          left: 8,
                        ),
                        child: Text(
                          'Select an interest to begin',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w200,
                              color: Colors.black54),
                        ),
                      ),
                    ),
                    InterestContainer(primaryColor: primaryColor),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InterestContainer extends StatelessWidget {
  double radius;

  const InterestContainer({
    super.key,
    required this.primaryColor,
    required this.radius,
  });

  final Color primaryColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 1.0),
      child: Container(
        height: 28,
        width: MediaQuery.of(context).size.width * 0.52,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(radius),
            topRight: Radius.circular(radius),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 4,
            left: 12,
          ),
          child: Text(
            'Travelling the world',
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class chatContainer extends StatelessWidget {
  String text;
  double height;
  double width;
  double radius;
  chatContainer({
    super.key,
    required this.height,
    required this.width,
    required this.text,
    required this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 233, 237, 245),
        borderRadius: BorderRadius.circular(radius),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 7),
          child: Text(
            text,
            style: TextStyle(fontSize: 12),
          ),
        ),
      ),
    );
  }
}
