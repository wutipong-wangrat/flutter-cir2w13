import 'package:flutter/material.dart';
import 'package:flutter_navigator/screen/about.dart';
import 'package:flutter_navigator/screen/contact.dart';
import 'package:flutter_navigator/screen/home_page.dart';
import 'package:flutter_navigator/screen/profile.dart';
import 'package:flutter_navigator/screen/weather_app.dart';

class AppView extends StatelessWidget {
  const AppView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Navigator'),
        centerTitle: true,
      ),
      body: Center(child: Text('Navigator')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.add),
      ),
      drawer: Drawer(
        // backgroundColor: Colors.blue,
        child: ListView(
          children: [
            DrawerHeader(
              // child: Text('HEADER',
              //     style: TextStyle(
              //         color: Colors.white,
              //         fontWeight: FontWeight.bold,
              //         fontSize: 20)),
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('images/2.png'),
              )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: Text('Home',style: TextStyle(fontSize: 15),),
                    ),
                  ),
                  Text('Sky',style: TextStyle(color: Colors.deepOrange),),
                ],
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
              },
              leading: Icon(
                Icons.home,
                color: Colors.greenAccent,
              ),
              title: Text(
                'Home',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => About(),));
              },
              leading: Icon(Icons.label_outline, color: Colors.greenAccent),
              title: Text(
                'About',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Contact(),));
              },
              leading: Icon(
                Icons.dns,
                color: Colors.greenAccent,
              ),
              title: Text(
                'Contact',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Profile(),));
              },
              leading: Icon(
                Icons.verified_user,
                color: Colors.greenAccent,
              ),
              title: Text(
                'Profile',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Weather(),));
              },
              leading: Icon(
                Icons.settings,
                color: Colors.greenAccent,
              ),
              title: Text(
                'Weather',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10,),
            Divider(color: Colors.blueGrey,),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.power_settings_new,
                color: Colors.greenAccent,
              ),
              title: Text(
                'EXIT',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
