import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,

      home: login(),
    ),
  ));
}
class login extends StatefulWidget{
  @override
  State<login> createState()=> loginpagestate();


  }
  

class loginpagestate extends State<login>{

  bool showpass=true;

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AYE AUTO"),backgroundColor: Colors.black54,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 70,),
            Image(image: AssetImage("assets/CAR.png"),height: 100,width: 100),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 50,right: 50,top: 20),
              child: TextField(decoration: InputDecoration(prefixIcon: Icon(Icons.person),//ICON IVIDE USE CHEYYUNNADH BORDER
                                                                                          // TE ULLIL ORU ICON VARAAN VENDI
                hintText: "user name",border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))) //BORDER KITTAN VENDI

              ),
            ),


            Padding(
                padding: const EdgeInsets.only(left: 50, right: 50, top: 20),
                child: TextField(
                  obscureText: showpass,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (showpass)
                            {
                              showpass= false;
                            } else {
                              showpass = true;
                            }
                          });
                        },
                        icon: Icon(showpass == true
                            ? Icons.visibility_off
                            : Icons.visibility),
                      ),
                      hintText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
            ),
            
            SizedBox(
              height: 35,),
            ElevatedButton(onPressed: () {}, child: Text("LOGIN")),
            SizedBox(
              height: 35,),
            TextButton(onPressed: () {},
                child: Text("CREATE A NEW USER",style: TextStyle(fontSize: 23,color: Colors.black),)),

            
            
            
          ],
        ),
      ),
      
      
      
      
    );
  }
  
}