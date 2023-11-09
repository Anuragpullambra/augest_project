import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: homepage(),));

}
class homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("CONTACT"),),


     body: ListView(
       children: [

        Card(color: Colors.amber,
          child: ListTile(

            leading:CircleAvatar(backgroundImage: AssetImage("assets/CAR.png"),),
            title: Text("ANURAG"),
            subtitle: Text("6282777426"),
            trailing: Icon(Icons.call),

          ),
        ),
         Card(color: Colors.cyan,
           child: ListTile(

             leading:CircleAvatar(backgroundImage: AssetImage("assets/dog2.png"),),
             title: Text("NANDHANA"),
             subtitle: Text("9605881852"),
             trailing: Icon(Icons.call),

           ),
         ),
         Card(color: Colors.black,
           child: ListTile(

             leading:CircleAvatar(backgroundImage: AssetImage("assets/dog2.png"),),
             title: Text("SAYANTH"),
             subtitle: Text("7356516493"),
             trailing: Icon(Icons.call),

           ),
         ),
         Card(color: Colors.red,
           child: ListTile(

             leading:CircleAvatar(backgroundImage: AssetImage("assets/Human.png"),),
             title: Text("ADHISH"),
             subtitle: Text("9048984014"),
             trailing: Icon(Icons.call),

           ),
         ),



       ],
     ),

   );
  }

}