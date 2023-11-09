import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
 runApp(MaterialApp(home:drawer() ,));
}
class drawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text("DRAWER"),),

  drawer: Drawer(

    child: ListView(
      children: [
        UserAccountsDrawerHeader(
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/dog2.png"))),

          accountName: Text("ANURAG"),
            accountEmail: Text("anuragpullambra@gmail.com"),
          currentAccountPicture: Image(image: AssetImage("assets/LOVE.png" ),),
        otherAccountsPictures: [
          CircleAvatar(backgroundImage: AssetImage("assets/dog.png"),),
          CircleAvatar(backgroundImage: AssetImage("assets/dog.png"),),

        ],),
ListTile(
  leading:Icon(Icons.home) ,
  title: Text("Home"),


),
    ListTile(
    leading:Icon(Icons.design_services) ,
    title: Text("Service"),
    ),
        ListTile(
          leading:Icon(Icons.help) ,
          title: Text("Help"),
        ),
        ListTile(
          leading:Icon(Icons.search) ,
          title: Text("Serch"),
        ),
        ListTile(
          leading:Icon(Icons.settings) ,
          title: Text("Settings"),
        ),
Divider(thickness: 2,color: Colors.red,),
        ListTile(
          leading:Icon(Icons.logout) ,
          title: Text("Log out"),
        ),
    ],

    ),

  ),
  );
  }

}