import 'package:augest_project/stack.dart';
import 'package:augest_project/whatsapplist.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'drawer.dart';
import 'listbuilder.dart';
import 'loginpage.dart';
void main()
{
  runApp(DevicePreview(builder: (BuildContext context)=>MaterialApp(
    debugShowCheckedModeBanner: false,
    useInheritedMediaQuery: true,
    home: bottumnavigation() ,)));
}
class bottumnavigation extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>bottumnavigationstate();
  }
  class bottumnavigationstate extends State<bottumnavigation>{
  var screen=[
    login(),
    Whatsapplist(),
    Listbuilder(),

    drawer()






  ];
  int index=2;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     bottomNavigationBar: BottomNavigationBar(

       type: BottomNavigationBarType.shifting,
       selectedItemColor: Colors.limeAccent,
       unselectedItemColor: Colors.red,
       onTap: (tapindex){
         setState(() {
           index=tapindex;
         });
       },

       items: [
       BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home", backgroundColor: Colors.green,),
       BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "favarate", backgroundColor: Colors.green,),
       BottomNavigationBarItem(icon: Icon(Icons.account_box),label: "account box", backgroundColor: Colors.green,),
       BottomNavigationBarItem(icon: Icon(Icons.logout),label: "logout", backgroundColor: Colors.green,),


     ],),
body: screen[index],
   );
  }

}