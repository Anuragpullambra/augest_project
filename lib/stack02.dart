import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home: stackwidget(),));
}
class stackwidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return
      Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.green,
      child: Stack(
        children: <Widget>[
          Container(

            width: 100,

            height: 100,
            color: Colors.red,
            

          ),
          Padding(
            padding: const EdgeInsets.only(left: 250,top: 200,
            right: 70),
            child: Container(
              width: 200,
              height: 200,
              color: Colors.yellow,

            ),
          )


        ],

      ),
    );
  }

}