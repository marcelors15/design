import 'package:flutter/material.dart';

void main() {
  runApp(TabBarApp());
}

class TabBarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /// For tabs to work, you need to keep the selected tab and content
      /// sections in sync. This is the job of the TabController.

      // Either create a TabController manually, or automatically by using a
      // DefaultTabController widget.
      // Using DefaultTabController is the simplest option, since it creates a
      // TabController and makes it available to all descendant widgets.

      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Tabs Demo'),
            // When a tab is selected, it needs to display content.
            // You can create tabs using the TabBar widget.
            /// By default, the TabBar looks up the widget tree for the nearest
            /// DefaultTabController. If you’re manually creating a TabController,
            /// pass it to the TabBar.
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car), text: 'Car'),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike), text: 'Bike',),
              ],
            ),
          ),
          // Now that you have tabs, display content when a tab is selected.
          // For this purpose, use the TabBarView widget.
          /// Order is important and must correspond to the order of the tabs in the TabBar.
          body: TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}
