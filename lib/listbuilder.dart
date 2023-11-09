import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Listbuilder(),));
}

class Listbuilder extends StatelessWidget{

  var name=["ANURAG","ARYASREE","ANU"];
  var image=["assets/Human.png","assets/Human.png","assets/Human.png"];
  var phone=["9048985014","6282777426","9048985021"];

  @override
  Widget build(BuildContext context) {
   return Scaffold(

     body: ListView.builder(itemBuilder: (context,Intex){
      return Card(
         child: ListTile(
           leading: Image(image: AssetImage(image[Intex]),),
           title: Text(name[Intex]),
           subtitle: Text(phone[Intex]),
           trailing: Icon(Icons.call),
         ),
       );

     },itemCount: name.length,),
   );
  }

}