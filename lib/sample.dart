import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,

      home: myapp(),
    ),
  ));
}
class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AYE AUTO"),
      ),
      body: Container(color: Colors.black54,
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 200,),
              Image(image: AssetImage("assets/CAR.png"),height:100,width:100),
              Text(
                "AYE AUTO",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
