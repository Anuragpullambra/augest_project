import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(DevicePreview(builder: (BuildContext context)=>MaterialApp(
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home: call(),
  )));
}
class call extends StatelessWidget{
  var name=["WIFE","MOM","DAD","BROTHER"];

  @override
  Widget build(BuildContext context) {
return Scaffold(

  body: ListView.builder(itemBuilder: (context,index){
    return Card(
      child: ListTile(
        leading:CircleAvatar(child: Icon(Icons.person)) ,
        title:Text(name[index]) ,

        trailing:Icon(Icons.call) ,


      ),
    );

  },itemCount: name.length,
  ),


);
  }

}