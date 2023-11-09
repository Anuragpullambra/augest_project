import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home:gridviewcustom () ,));
}
class gridviewcustom extends StatelessWidget{

  var image = [
    "assets/Human.png",
    "assets/Human.png",
    "assets/Human.png",
    "assets/Human.png",
    "assets/Human.png",
    "assets/Human.png",
    "assets/Human.png",
    "assets/Human.png",
    "assets/Human.png",
    "assets/Human.png"
  ];
  var name = [
    "ANURAG",
    "ARYASREE",
    "ANU",
    "ARYASREE",
    "ANU",
    "ANURAG",
    "ARYASREE",
    "ANU",
    "ARYASREE",
    "ANU"
  ];
  var rate = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"];

  @override
  Widget build(BuildContext context) {
return Scaffold(

  body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      childrenDelegate: SliverChildBuilderDelegate((context,index){
        return Card(

          child: ListTile(

            leading:CircleAvatar(backgroundImage: AssetImage(image[index]),) ,
           trailing:Icon(Icons.shopping_cart) ,
            title:Text(name[index]) ,
            subtitle: Text(rate[index]),
          ),


        );
      },childCount: image.length


      )),





);
  }

}