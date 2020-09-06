import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: MainScreen(),
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
            ),
            ListTile(
              title: Text('Page Two'),
              trailing: Icon(Icons.arrow_downward),
            ),
            Divider(),
            ListTile(
              title: Text('Closee'),
              trailing: Icon(Icons.close),
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
