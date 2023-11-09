import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: gridview(),
      )));
}
class gridview extends StatelessWidget{
  var name=["Home","Email","Alaram","Wallet","Backup","Book","Camera","Person","Print","Phone","notes","music"];
  var color=[Colors.green,Colors.blue,Colors.red,Colors.yellow,Colors.cyan,Colors.blue,Colors.red,
    Colors.blue[200],Colors.yellow,Colors.green,Colors.blue];
  var icon=[Icons.home,Icons.email,Icons.alarm,Icons.wallet,Icons.book,
    Icons.camera,Icons.person,Icons.print,Icons.phone,Icons.notes,Icons.music_note];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("Grid View"),),
     body: GridView.count(crossAxisCount: 3),
     
     children:List.generate(12, (index) {
       return Card(
         child: Column(

           children: [SizedBox(height: 100,),
             Text(name[index],),
           Text(icon[index] as String)
           ],
         ),



       );
     }


     )


   );

  }

}