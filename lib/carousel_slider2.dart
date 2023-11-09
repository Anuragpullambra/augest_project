import 'package:augest_project/bottomnav.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home:carousel_slider(),
    debugShowCheckedModeBanner: false,));
}
class carousel_slider extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: CustomScrollView(
      slivers: [
        SliverAppBar(backgroundColor: Colors.green,
          title: Text("FARMERS FRESH ZONE"),
        expandedHeight: 150,
        pinned: true,
        floating: true,
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.location_on_outlined),
        ),


Padding(
  padding: const EdgeInsets.only(top: 19,right: 30),
  child:   Text("kochi"),
),
        ],
        bottom: AppBar(
          elevation: 0,
          backgroundColor: Colors.green,
          title: Container(decoration: BoxDecoration(color: Colors.white70,
          ),child: TextField(decoration: InputDecoration(prefixIcon: Icon(Icons.search),
          hintText: "search for vegitables and fruit",
            border: InputBorder.none
          ),
          ),


          ),
        ),

        ),
        SliverList(delegate: SliverChildListDelegate([
          Padding(
            padding: const EdgeInsets.only(left: 05,top: 20,),
            child: Row(
              children: [

                Container(
                decoration: BoxDecoration(border: Border.all(color:Colors.greenAccent),
                borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Center(child: Text("vegitables",style: TextStyle(color: Colors.greenAccent),),),
                height: 30,width: 120,



        ),
    Padding(
      padding: const EdgeInsets.only(left: 50),
      child: Container(
      decoration: BoxDecoration(border: Border.all(color:Colors.greenAccent),
      borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Center(child: Text("fruits",style: TextStyle(color: Colors.greenAccent),),),
      height: 30,width: 120,
      )),
    Padding(
      padding: const EdgeInsets.only(left: 70),
      child: Container(
      decoration: BoxDecoration(border: Border.all(color:Colors.greenAccent),
      borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Center(child: Text("exotc cut",style: TextStyle(color: Colors.greenAccent),),),
      height: 30,width: 120,

      ),
    ) ],

            ),
          ),
          CarouselSlider(items: [Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0),
            image:DecorationImage(image: )
            ),
          )],
              options: CarouselOptions(

              ))

        ]))


      ],
      
      

    ),


  );
  }

}