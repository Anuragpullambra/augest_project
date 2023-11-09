import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()


{
  runApp(DevicePreview(builder: (BuildContext context)=>MaterialApp(
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home:tabbar() ,)));
}
class tabbar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(


        appBar: AppBar(title: Text("GeeksForGeeks"),backgroundColor: Colors.green,
          bottom:TabBar(
            isScrollable: true,
            indicatorColor: Colors.cyan,
            labelColor: Colors.red,
            unselectedLabelColor: Colors.white,
            tabs: [
Tab(icon: Icon(Icons.account_box),child: Text("Accout"),),
            Tab(icon: Icon(Icons.alarm),child: Text("Alaram"),),
            Tab(icon: Icon(Icons.home),child: Text("Home"),),
            Tab(icon: Icon(Icons.contact_phone),child: Text("Contact"),),
            Tab(icon: Icon(Icons.person),child: Text("Person"),),
            Tab(icon: Icon(Icons.access_time_filled),child: Text("Time"),),




          ],)







        ),
      ),
    );
  }

}