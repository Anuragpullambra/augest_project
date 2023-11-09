import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home: Listseperater()));
}
class Listseperater extends StatelessWidget{

  var name=["ANURAG","ARYASREE","ANU"];
  var image=["assets/Human.png","assets/Human.png","assets/Human.png"];
  var phone=["9048985014","6282777426","9048985021"];
  var colors=[Colors.blue,Colors.greenAccent,Colors.yellow];
  @override
  Widget build(BuildContext context) {
   var images;
   return Scaffold(

     body: ListView.separated(itemBuilder: (context,intex){

       return Card(color: colors[intex],
       child: ListTile(
         leading: Image(image: AssetImage(image[intex]),),
         title: Text(name[intex]),
         subtitle: Text(phone[intex]),
         trailing: Icon(Icons.access_alarm),

       ),
       );

     },separatorBuilder: (context,intex){
       return Divider(
        thickness: 5,color: colors[intex],
       );
     },itemCount: images.length()),
     );

  }

}