import 'package:flutter/material.dart';

void main() {
  runApp(OrientationApp());
}

/// In Flutter, you can build different layouts depending on a given Orientation.

class OrientationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Orientation Demo';

    return MaterialApp(
      title: appTitle,
      home: OrientationList(
        title: appTitle,
      ),
    );
  }
}

class OrientationList extends StatelessWidget {
  OrientationList({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      // The OrientationBuilder calculates the current Orientation by comparing
      // the width and height available to the parent widget, and rebuilds when
      // the size of the parent changes.
      /// If you’re interested in the orientation of the screen, rather than the amount
      /// of space available to the parent, use MediaQuery.of(context).orientation instead
      /// of an OrientationBuilder widget.
      body: OrientationBuilder(
        builder: (context, orientation) {
          return GridView.count(
            // Create a grid with 2 columns in portrait mode,
            // or 3 columns in landscape mode.
            /// crossAxisCount: MediaQuery.of(context).orientation == Orientation.portrait ? 2 : 3,
            crossAxisCount: orientation == Orientation.portrait ? 2 : 3,

            // Generate 100 widgets that display their index in the List.
            children: List.generate(100, (index) {
              return Center(
                child: Text(
                  'Item $index',
                  style: Theme.of(context).textTheme.headline1,
                ),
              );
            }),
          );
        },
      ),
    );
  }
}
