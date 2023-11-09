import 'package:flutter/material.dart';

import 'package:liquid_swipe/liquid_swipe.dart';

import 'package:flutter/src/material/icons.dart';
void main()
{
  runApp(MaterialApp(home:MyliquidSwipe() ,));
}
class MyliquidSwipe extends StatelessWidget {



  @override

  Widget build(BuildContext context) {

    final page = [

    Container(

      color:Colors.brown,

      child: Padding(

        padding: const EdgeInsets.all(100.0),

        child: Center(

          child: Column(

              children:<Widget>[



                Text("Welcome To GeeksforGeeks",style:TextStyle(

                  fontSize: 30,

                  color:Colors.green[600],

                ),

                ),



              ]

          ),

        ),

      ),),

    Container(color:Colors.yellow[100],

    child: Padding(

    padding: const EdgeInsets.all(120.0),

    child: Center(

    child: Column(

    children:<Widget>[

    Image.asset("assets/save.png"),

    Text("",style:TextStyle(

    fontSize: 20,

    color:Colors.green,

    ),

    )

    ]

    ),),

    ),),



    Container(color: Colors.blue[100],

    child: Padding(

    padding: const EdgeInsets.all(100.0),

    child: Center(

    child: Column(

    children:<Widget>[



    Text("   GeeksforGeeks  A Computer Science portal

    for  geeks",

    style:TextStyle(

    fontSize:30 ,

    color:Colors.green[600],

    ),

    ),

    ]),),

    ))

    ];

    return Scaffold(

    body: LiquidSwipe(

    enableLoop: false,

    pages: page,

    slideIconWidget: Icon(Icons.arrow_back_ios),

    ),

    );

  }
}