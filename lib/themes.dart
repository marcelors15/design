import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Themes());
}

class Themes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appName = 'Custom Themes';

    return MaterialApp(
      title: appName,
      // To share a Theme across an entire app, provide a ThemeData
      // to the MaterialApp constructor.
      theme: ThemeData(
        // Define the default brightness and colors
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[900],
        accentColor: Colors.cyan[500],

        // Define the default font family
        fontFamily: 'Georgia',

        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      home: MyHomePage(
        title: appName,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, @required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Container(
          /// The Theme.of(context) method looks up the widget tree and returns
          /// the nearest Theme in the tree. If you have a standalone Theme defined
          /// above your widget, that’s returned. If not, the app’s theme is returned.
          color: Theme.of(context).accentColor,
          child: Text(
            'Text with a background color',
            style: Theme.of(context).textTheme.headline6,
            //style: Theme.of(context).textTheme.headline1,
          ),
        ),
      ),

      /// If you don’t want to inherit any application colors or font styles,
      /// create a ThemeData() instance and pass that to the Theme widget.
      /* floatingActionButton: Theme(
        // Create a unique theme with "ThemeData"
        data: ThemeData(
          accentColor: Colors.green,
          //accentColor: Theme.of(context).accentColor,
        ),
        child: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.add),
        ),
      ),*/

      /// Rather than overriding everything, it often makes sense to extend the
      /// parent theme. You can handle this by using the copyWith() method.
      floatingActionButton: Theme(
        // Find and extend the parent theme using "copyWith".
        // data: Theme.of(context).copyWith(accentColor: Colors.yellow),
        data: Theme.of(context).copyWith(
          colorScheme: Theme.of(context)
              .colorScheme
              .copyWith(secondary: Colors.orange[400]),
        ),
        child: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
