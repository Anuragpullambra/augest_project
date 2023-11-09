import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
            home: Listseperator(),
          )));
}

class Listseperator extends StatelessWidget {
  var name = [
    "List item12",
    "List item13",
    "List item14",
    "List item15",
    "List item16",
    "List item17",
    "List item18",
    "List item19",
    "List item20",
    "List item21",
    "List item22",
    "List item23",
    "List item24",
    "List item25"
  ];
  var title = [
    "seperator12",
    "seperator13",
    "seperator14",
    "seperator15",
    "seperator16",
    "seporator17",
    "seperator18",
    "seperator19",
    "seperator20",
    "seperator21",
    "seperator22",
    "seperator23",
    "seperator24",
    "seperator25"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Listview.separeted()",
        ),
        backgroundColor: Colors.green,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Card(
              color: Colors.white,
              child: ListTile(
                title: Text(name[index]),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return Container(
              color: Colors.blue,
              child: Text(title[index]),
            );
          },
          itemCount: name.length),
    );
  }
}
