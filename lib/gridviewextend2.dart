import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(

          home: Gridview2()));
} var image = [
  "assets/Human.png",
  "assets/Human.png",
  "assets/Human.png",
  "assets/Human.png",
  "assets/Human.png",
  "assets/Human.png",
  "assets/Human.png",
  "assets/Human.png",
  "assets/Human.png",
  "assets/Human.png"
];
var name = [
  "ANURAG",
  "ARYASREE",
  "ANU",
  "ARYASREE",
  "ANU",
  "ANURAG",
  "ARYASREE",
  "ANU",
  "ARYASREE",
  "ANU"
];
var rate = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"];

class Gridview2 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 300,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          children: List.generate(10, (index) {
            return Card(
              child: Column(
                children: [
                  Image(
                    image: AssetImage(image[index]),
                  ),
                  Row(
                    children: [
                      Text(name[index]),

                      SizedBox(
                        width: 20,

                      ),
                      Text(rate[index]),
                    ],
                  )
                ],
              ),
            );
          })),
    );
  }
}
