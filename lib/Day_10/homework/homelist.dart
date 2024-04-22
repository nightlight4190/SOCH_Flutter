import 'package:day_5_hw/Day_10/homework/person_detail.dart';
import 'package:day_5_hw/Day_10/homework/person_list.dart';
import 'package:flutter/material.dart';

class PersonList extends StatelessWidget {
  const PersonList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Person List',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: personData.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => PersonDetail(
                    Name: personData[index]['name'],
                    Age: personData[index]['age'],
                    Gender: personData[index]['gender'],
                    ImageUrl: personData[index]['image_url'],
                    Bio: personData[index]['bio'],
                    // Hobbies: personData[index]['hobbies'],
                  ),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.all(12),
              height: 100,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                ),
                border: Border.all(),
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(12)),
                    child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        personData[index]['image_url'],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          personData[index]['name'],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "${personData[index]['age'].toString()} years old",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
