import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: profile(),
  ));
}

class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("ANURAG RAMESH"),
              accountEmail:Column(children: [Padding(
                padding: const EdgeInsets.only(right: 200),
                child: Text("anurag@gmail.com"),
              ),Row(
                children: [
                SizedBox(height: 30),
                Text("1500 followers"),SizedBox(width: 30,),Text("345 following")

              ],


              )


              ],) ,
              currentAccountPicture: CircleAvatar(
                  child: Image(
                image: AssetImage("assets/LOVE.png"),
              )),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text("Message"),
            ),
            ListTile(
              leading: Icon(Icons.search),
              title: Text("Search"),
            ),
            ListTile(
              leading: Icon(Icons.restore_from_trash),
              title: Text("Trash"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            ListTile(
              title: Text("Profile"),
            ),
            ListTile(
              leading: Icon(Icons.login),
              title: Text("LogIn"),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            Text("Communicate"),
            ListTile(
              leading: Icon(Icons.share),
              title: Text("Share"),
            ),
            ListTile(
              leading: Icon(Icons.rate_review),
              title: Text("Rate Us"),
            ),
          ],
        ),
      ),
    );
  }
}
