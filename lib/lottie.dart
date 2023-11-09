import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
void main(){
  runApp(MaterialApp(home:lottieg() ,));
}
class lottieg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: ListView(children: [
      Lottie.asset("animation/anurag.json")

    ],),


  );
  }

}
