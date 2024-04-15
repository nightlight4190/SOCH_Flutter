import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String imgUrl = "https://picsum.photos/200/300?random=";
    Color primaryColor = Color.fromARGB(255, 59, 33, 229);
    Color secondaryColor = Color.fromARGB(255, 233, 237, 245);

    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Color.fromARGB(255, 248, 247, 247),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            // color: Colors.red,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Icon(
                          Icons.arrow_back,
                          color: primaryColor,
                          size: 26,
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            'Alan Clark',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins',
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            'Online',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Container(
                          height: 40,
                          width: 40,
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
                    top: 40,
                    left: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      chatContainer(
                        height: 35,
                        width: 65,
                        text: 'Hi Alan ',
                        radius: 14,
                        color: secondaryColor,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      chatContainer(
                        height: 60,
                        width: MediaQuery.of(context).size.width * 0.6,
                        text: 'I am Jason, here to help you find new friends.',
                        radius: 10,
                        color: secondaryColor,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 35,
                        width: MediaQuery.of(context).size.width * 0.6,
                        decoration: BoxDecoration(
                          color: secondaryColor,
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
                                fontSize: 16,
                                fontWeight: FontWeight.w200,
                                color: Colors.black54),
                          ),
                        ),
                      ),
                      InterestContainer(
                        primaryColor: primaryColor,
                        radius: 0,
                        text: 'Travelling the world',
                      ),
                      InterestContainer(
                        primaryColor: primaryColor,
                        radius: 0,
                        text: 'Photography',
                      ),
                      InterestContainer(
                        primaryColor: primaryColor,
                        radius: 8,
                        text: 'Watching Movie',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 35,
                              width: MediaQuery.of(context).size.width * 0.3,
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 7),
                                  child: Text(
                                    'Photography',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 200,
                      ),
                      Container(
                        height: 35,
                        width: 65,
                        decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 7, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.circle,
                                  size: 10,
                                  color: Color.fromARGB(255, 139, 136, 136),
                                ),
                                Icon(
                                  Icons.circle,
                                  size: 10,
                                  color: Color.fromARGB(255, 189, 185, 185),
                                ),
                                Icon(
                                  Icons.circle,
                                  size: 10,
                                  color: Color.fromARGB(255, 203, 200, 200),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width * 0.265,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      right: 20,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.emoji_emotions_outlined,
                          size: 30,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Type message',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.send,
                          color: primaryColor,
                          size: 30,
                        ),
                      ],
                    ),
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

// ignore: must_be_immutable
class InterestContainer extends StatelessWidget {
  double radius;
  String text;

  InterestContainer({
    super.key,
    required this.primaryColor,
    required this.radius,
    required this.text,
  });

  final Color primaryColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 1.8),
      child: Container(
        height: 40,
        width: MediaQuery.of(context).size.width * 0.6,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(radius),
            bottomRight: Radius.circular(radius),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10,
            left: 12,
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 15,
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
  Color? color;
  chatContainer({
    super.key,
    required this.height,
    required this.width,
    required this.text,
    required this.radius,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 7),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
