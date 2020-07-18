import 'package:flutter/material.dart';

void main() => runApp(DrawerApp());

class DrawerApp extends StatelessWidget {
  final appTitle = 'Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState(title: title);
}

class _MyHomePageState extends State<MyHomePage> {
  _MyHomePageState({this.title});

  final String title;
  String text = 'My Page!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // The Scaffold widget provides a consistent visual structure to apps that
      // follow the Material Design Guidelines. It also supports special Material
      // Design components, such as Drawers, AppBars and SnackBars.
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text(text)),
      // A drawer can be any widget, but it’s often best to use the Drawer widget
      // from the material library, which adheres to the Material Design spec.
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Drawer Header',
                style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app
                setState(() {
                  text = 'Item 1';
                });
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app
                setState(() {
                  text = 'Item 2';
                });
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
