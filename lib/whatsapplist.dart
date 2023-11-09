import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(DevicePreview(builder: (BuildContext context)=>MaterialApp(
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home:Whatsapplist() ,)));
}
class Whatsapplist extends StatelessWidget{
  var image=["assets/LOVE.png","assets/Human.png","assets/Human.png","assets/Human.png","assets/Human.png",
    "assets/Human.png","assets/Human.png"];

  var name=["WIFE","MOM","DAD","BROTHER","SISTER","TEACHER","FRIEND"];
  var value=["Typing...","Recording...","Typing","YES","no","tell me","ok"];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: ListView.builder(itemBuilder: (context,index){
       return Card(
         child: ListTile(
           leading:CircleAvatar(child: Image(image: AssetImage(image[index])),),
           title:Text(name[index]) ,
           subtitle: Text(value[index]),
         trailing:Icon(Icons.volume_mute) ,

         ),
       );
     },itemCount: name.length,
     ),

   );
  }

}