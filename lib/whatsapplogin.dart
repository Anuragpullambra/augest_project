import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home:login() ,));
}
class login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(


       appBar: AppBar(backgroundColor:Colors.white,elevation: 0,
         title: Text("ENTER YOUR PHONE NUMBER",
           style: TextStyle(color: Colors.teal,
         fontWeight: FontWeight.w700,
         fontSize: 18,
         wordSpacing: 1,
           ),),
         centerTitle: true,
         actions: [

           Icon(Icons.more_vert,color: Colors.black,),


         ],),

body: Container(

  height: MediaQuery.of(context).size.height,
  width: MediaQuery.of(context).size.width,
  child: Column(

    children: [

      Text("Whatsapp will send an sms message to verify your number",style: TextStyle(fontSize: 13.5,

      ),

      ),
      SizedBox(height: 5,),
      Text("Whats my number?",style: TextStyle(fontSize: 12.8,
      color: Colors.cyan[800]),

      ),
      SizedBox(height: 15,
      
      ),
      Card(),
    ],
  ),
),


  );
  }
Widget Card(){
    return Container(
      
      width: MediaQuery.of(context as BuildContext).size.width/1.5,
      padding: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.teal,
      width: 1.8,
      
      ),)
      ),
      child: Row(
        children: [
          Text("Inda",),
          Icon(Icons.arrow_drop_down,color: Colors.teal,size: 28,)
        ],
      ),
    );
}
  
}