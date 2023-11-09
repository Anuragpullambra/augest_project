import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: Listviewcustem(),
      )));
}
class Listviewcustem extends StatelessWidget {
  var name = ["ANURAG", "ARYASREE", "ANU"];

  var phone = ["9048985014", "6282777426", "9048985021"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate(
              (context, index) {
            return Card(

              child: ListTile(
                title: Text(name[index]),
                subtitle: Text(phone[index]),


              ),
            );
          }


      )),
    );
  }
}
