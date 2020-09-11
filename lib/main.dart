import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:material_drawer/new_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: MainScreen(),
      // routes: {'/pageone': (BuildContext context) => NewPage('Page One')},
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer App'),
        centerTitle: true,
        elevation: defaultTargetPlatform == TargetPlatform.iOS ? 5.0 : 0.0,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Jamaaldeen Akolade'),
              accountEmail: Text('jamaal@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text('JA'),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text('D'),
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text('B'),
                ),
              ],
            ),
            ListTile(
              title: Text('Page One'),
              trailing: Icon(Icons.arrow_upward),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => NewPage('Page One')));
              },
            ),
            ListTile(
              title: Text('Page Two'),
              trailing: Icon(Icons.arrow_downward),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => NewPage('Page Two')));
              },
            ),
            Divider(),
            ListTile(
              title: Text('Close'),
              trailing: Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            )
          ],
        ),
      ),
      body: Container(
        child: Center(
          child: Text('Home page'),
        ),
      ),
    );
  }
}
