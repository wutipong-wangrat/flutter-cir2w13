import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Navigator'),
          centerTitle: true,
        ),
        body: Center(child: Text('Navigator')),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Text');
          },
          child: Icon(Icons.add),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Text('HEADER',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                decoration: BoxDecoration(color: Colors.indigo),
              ),
              ListTile(
                onTap: (){
                  print('Home');
                },
                leading: Icon(Icons.home,color: Colors.greenAccent,),
                title: Text('Home',style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              ListTile(
                onTap: (){},
                leading: Icon(Icons.account_circle,color: Colors.greenAccent),
                title: Text('Account',style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              ListTile(
                onTap: (){},
                leading: Icon(Icons.dns,color: Colors.greenAccent,),
                title: Text('Dns',style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              ListTile(
                onTap: (){},
                leading: Icon(Icons.settings,color: Colors.greenAccent,),
                title: Text('Settings',style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              ListTile(
                onTap: (){},
                leading: Icon(Icons.power_settings_new,color: Colors.greenAccent,),
                title: Text('EXIT',style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
