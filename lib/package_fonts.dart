import 'package:flutter/material.dart';

void main() => runApp(PackageFonts());

class PackageFonts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Package Fonts',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // The AppBar uses the app-default font.
      appBar: AppBar(title: Text('Package Fonts')),
      body: Center(
        // This Text widget uses the Modak font.
        child: Text(
          'Using the Modak font from the design package',
          style: TextStyle(
            fontFamily: 'Modak',
            package: 'design',
          ),
        ),
      ),
    );
  }
}
