import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: stack(),
  ));
}
class stack extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 return Scaffold(

   body: Stack(
     children: [
       Center(child: Container(
         child: Padding(
           padding: const EdgeInsets.only(top: 200,left: 200),
           child: Text("ghh"),
         ),
         color: Colors.red,height: 350,width: 350,)),
       Positioned(child: Container(color: Colors.lightBlue,height: 120,width: 150,),top: 200,right:300,left: 150,),
       Positioned(child: Container(color: Colors.grey,height: 120,width: 150,),top: 200,left: 300,right:150 ,),


     ],



   ),

 );
  }

}