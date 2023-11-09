import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(             //widget ayadh kond runapp call cheythu
    builder: (BuildContext context) => MaterialApp(          //metireal app koduthal matram ann app run cheyyan avullu
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,

      home: myapp(),
    ),
  ));
}
class myapp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => myappState();

}
class myappState extends State<myapp>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(




    );
  }

}