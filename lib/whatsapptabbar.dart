import 'package:augest_project/whatsappcall.dart';
import 'package:augest_project/whatsapplist.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(DevicePreview(builder: (BuildContext context)=>MaterialApp(
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home: whatsapp(),

  )));
}
class whatsapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return DefaultTabController(
    length: 4,
    child: Scaffold(
      appBar: AppBar(title: Text("WhatsApp"),
      backgroundColor: Colors.green,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.camera_alt),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
          PopupMenuButton(itemBuilder: (context){
            return[
              PopupMenuItem(child:Text("New group") ),
              PopupMenuItem(child: Text("New broadcast")),
              PopupMenuItem(child: Text("Linkes device")),
              PopupMenuItem(child: Text("Starred message")),
              PopupMenuItem(child: Text("Payment")),
              PopupMenuItem(child: Text("Settings"))


            ];

          })
        ],
        bottom: TabBar(tabs: [
          Tab(icon: Icon(Icons.person),),
          Tab(child: Text("Chat"),),
          Tab(child: Text("Status"),),
          Tab(child: Text("Call"),),



        ],),

      ),
body: TabBarView(
  children:[
    Center(child: Text("Community")),
    Whatsapplist(),
    Center(child: Text("Status")),
    call(),

  ],

),



    ),
  );
  }

}