import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String imgUrl = "https://picsum.photos/200/300?random=";

    var textStyle = TextStyle(
      color: Colors.grey,
      fontSize: 18,
      fontWeight: FontWeight.w500,
    );
    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Color.fromARGB(255, 59, 33, 229),
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 40,
                    bottom: 10,
                    left: 18,
                  ),
                  child: Text(
                    'Chats',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                color: Colors.white70,
                child: Column(
                  children: [
                    ChatImage(
                      imgUrl: imgUrl + '6',
                      name: 'Azar Hosseini',
                      message: 'Heyy',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ChatImage(
                      imgUrl: imgUrl + '7',
                      name: 'Phet Putrie',
                      message: 'I\'m home',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ChatImage(
                      imgUrl: imgUrl + '8',
                      name: 'Kay Totleben',
                      message: 'Bring me food',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ChatImage(
                      imgUrl: imgUrl + '9',
                      name: 'John Doe',
                      message: 'Don\'t worry',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ChatImage(
                      imgUrl: imgUrl + '10',
                      name: 'Kallyun bhut',
                      message: 'I still love her man',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ChatImage(
                      imgUrl: imgUrl + '11',
                      name: 'Ricky Muhamad',
                      message: 'I\'m busy',
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 100,
            child: Container(
              height: 140,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 245, 240, 240),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Stack(
                          children: [
                            DottedBorder(
                              borderType: BorderType.Circle,
                              radius: Radius.circular(50),
                              padding: EdgeInsets.all(25),
                              child: ClipRRect(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(40),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 10,
                              left: 10,
                              child: Icon(
                                Icons.add,
                                size: 30,
                                color: Colors.deepPurple,
                              ),
                            )
                          ],
                        ),
                        HeadImage(imgUrl: imgUrl),
                        HeadImage(imgUrl: imgUrl + '1'),
                        HeadImage(imgUrl: imgUrl + '2'),
                        HeadImage(imgUrl: imgUrl + '3'),
                        HeadImage(imgUrl: imgUrl + '4'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          'All',
                          style: TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          'Family',
                          style: textStyle,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          'Buddies',
                          style: textStyle,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ChatImage extends StatelessWidget {
  String name;
  String message;
  ChatImage({
    super.key,
    required this.imgUrl,
    required this.name,
    required this.message,
  });

  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 12.0,
        left: 25,
      ),
      child: Row(
        children: [
          Column(
            children: [
              HeadImage(imgUrl: imgUrl),
            ],
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              Text(
                message,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: Colors.black26,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class HeadImage extends StatelessWidget {
  const HeadImage({
    super.key,
    required this.imgUrl,
  });

  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(imgUrl),
          fit: BoxFit.cover,
        ),
        color: Colors.amber,
        borderRadius: BorderRadius.circular(200),
      ),
    );
  }
}



// Container(
//               height: 140,
//               width: MediaQuery.of(context).size.width,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(20),
//                 color: Colors.white,
//               ),
//               child: Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(top: 30),
//                     child: Row(
//                       // crossAxisAlignment: CrossAxisAlignment.center,
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         Stack(
//                           children: [
//                             DottedBorder(
//                               borderType: BorderType.Circle,
//                               radius: Radius.circular(50),
//                               padding: EdgeInsets.all(25),
//                               child: ClipRRect(
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(40)),
//                               ),
//                             ),
//                             Positioned(
//                               top: 10,
//                               left: 10,
//                               child: Icon(
//                                 Icons.add,
//                                 size: 30,
//                                 color: Colors.deepPurple,
//                               ),
//                             )
//                           ],
//                         ),
//                         HeadImage(imgUrl: imgUrl),
//                         HeadImage(imgUrl: imgUrl + '1'),
//                         HeadImage(imgUrl: imgUrl + '2'),
//                         HeadImage(imgUrl: imgUrl + '3'),
//                         HeadImage(imgUrl: imgUrl + '4'),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(
//                         vertical: 10, horizontal: 20),
//                     child: Row(
//                       children: [
//                         Text(
//                           'All',
//                           style: TextStyle(
//                             color: Colors.deepPurple,
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         SizedBox(
//                           width: 30,
//                         ),
//                         Text(
//                           'Family',
//                           style: textStyle,
//                         ),
//                         SizedBox(
//                           width: 30,
//                         ),
//                         Text(
//                           'Buddies',
//                           style: textStyle,
//                         ),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ),