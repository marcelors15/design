import 'package:design/drawer.dart';
import 'package:design/orientation.dart';
import 'package:design/package_fonts.dart';
import 'package:design/snackbar.dart';
import 'package:flutter/material.dart';

import 'custom_font.dart';
import 'tabs.dart';
import 'themes.dart';

void main() {
  runApp(MaterialApp(
    title: 'Design Flutter',
    home: HomeRoute(),
  ));
}

class HomeRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Design Flutter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('Add a Drawer to a screen'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => (DrawerApp())),
                );
              },
            ),
            RaisedButton(
              child: Text('Display a snackbar'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => (SnackBarApp())),
                );
              },
            ),
            RaisedButton(
              child: Text('Update the UI based on orientation'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => (OrientationApp())),
                );
              },
            ),
            RaisedButton(
              child: Text('Work with tabs'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => (TabBarApp())),
                );
              },
            ),
            RaisedButton(
              child: Text('Custom Fonts'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => (CustomFonts())),
                );
              },
            ),
            RaisedButton(
              child: Text('Package Fonts'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => (PackageFonts())),
                );
              },
            ),
            RaisedButton(
              child: Text('Themes'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => (Themes())),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
