import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home: gridbuilder(),));
}
class gridbuilder extends StatelessWidget{

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
     body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
         itemBuilder: (context,index){
       return Card(
         child: Column(
           children: [
             Image(image: AssetImage(image[index]),),
             Row(children: [
               SizedBox(width:30,),
               Text(name[index]),
               Text(rate[index])

             ],)


           ],
         ),
       );


    })


   );
  }

}