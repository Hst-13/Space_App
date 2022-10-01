import 'package:flutter/material.dart';

void main() {
  runApp(const SpaceApp());
}

class SpaceApp extends StatefulWidget {
  const SpaceApp({super.key});

  @override
  State<SpaceApp> createState() => _SpaceAppState();
}

class _SpaceAppState extends State<SpaceApp> {
  List data = [
    {
      "image":
          "https://images.pexels.com/photos/220201/pexels-photo-220201.jpeg?auto=compress&cs=tinysrgb&w=600",
      "title": "Space 1",
      "likes": 201
    },
    {
      "image":
          "https://images.pexels.com/photos/41951/solar-system-emergence-spitzer-telescope-telescope-41951.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      "title": "Space 2",
      "likes": 654
    },
    {
      "image":
          "https://images.pexels.com/photos/4644812/pexels-photo-4644812.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "title": "Space 3",
      "likes": 812
    },
    {
      "image":
          "https://images.pexels.com/photos/957040/night-photograph-starry-sky-night-sky-star-957040.jpeg?auto=compress&cs=tinysrgb&w=600",
      "title": "Space 4",
      "likes": 40
    },
    {
      "image":
          "https://images.pexels.com/photos/566169/pexels-photo-566169.jpeg?auto=compress&cs=tinysrgb&w=600",
      "title": "Space 5",
      "likes": 169
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Space App",
            style: TextStyle(fontSize: 36),
          ),
        ),
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: ((context, index) {
            return Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(6),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 99, 195, 244),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              height: 310,
              child: Column(children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.network(
                    data[index]['image'],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      data[index]["title"],
                      style: TextStyle(
                          fontSize: 24,
                          fontFamily: "Comic sans",
                          fontWeight: FontWeight.w500),
                    ),
                    Row(
                      children: [
                        Icon(Icons.favorite),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          data[index]["likes"].toString(),
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.comment),
                      ],
                    )
                  ],
                ),
              ]),
            );
          }),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.check),
        ),
      ),
    );
  }
}
