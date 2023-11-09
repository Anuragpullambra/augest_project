import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home:bottom() ,));
}
class bottom extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    
   body: CustomScrollView(
     slivers: [
       SliverAppBar(
         leading: Icon(Icons.menu),
         backgroundColor: Colors.green,
         title: Center(child: Text("Type Your Location")),
         actions: [
         IconButton(onPressed: (){}, icon: Icon(Icons.location_on_outlined),),
        Padding(
          padding: const EdgeInsets.only(top: 19,right: 30),
          child: Text("kichi"),
        )

         ],
         bottom: AppBar(
           backgroundColor: Colors.green,
           elevation: 0,
           title: TextField(
               style:TextStyle(color:Colors.white70),
             decoration: InputDecoration(
               fillColor: Colors.white70,
               filled: true,
               border: InputBorder.none,
               hintText: "search button",
             suffixIcon: Icon(Icons.search),
             enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),
             borderSide: BorderSide(color: Colors.tealAccent))
             ),


         ),

       )


       ),],

  )


  );
  }

}