import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>MaterialApp(
      useInheritedMediaQuery:true,debugShowCheckedModeBanner: false,
      home: Listbuilder())));
}

class Listbuilder extends StatelessWidget{
  var alp=["F","A","I","H","A"];
  var name=["facebook","A10 NETWORK INC","INTEL CROP","HP INC","ADVANCED MICRO DEVICE INC"];
   var value=["\$123","\$325","\$546.5","\$765","\$456"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("list view builder"),),
      body: ListView.builder(itemBuilder:(context,index){
        return Card(
         child: ListTile(
           leading: CircleAvatar(child: Text(alp[index]),),
           title: Text(name[index]),
           trailing:Text(value[index]) ,
         ), 
        );
    },itemCount: name.length,
    ),
    );
  }
  
}