import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(DevicePreview(builder: (BuildContext context)=>MaterialApp(
    useInheritedMediaQuery: true,
    home:gridviewcount() ,)));
}
class gridviewcount extends StatelessWidget{
 var image = [
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

  @override
  Widget build(BuildContext context) {
  return Scaffold(

     body: GridView.count(crossAxisCount: 3,
     children:List.generate(10, (index)
     {
       return Card(
         child: Column(
           children: [
             Image(image: AssetImage(image[index])),
             Row(
             children: [
             Text(name[index]),
             SizedBox(width: 30,),
             Text(rate[index])

     ])
           ],

         ),


       );
     }

     )


     ),



  );
  }

}