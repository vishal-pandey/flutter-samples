import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: tabs,
    );
  }
}


Widget tabs = DefaultTabController(
  length: 3,
  child: Scaffold(
    appBar: AppBar(
      bottom: TabBar(
        tabs: <Widget>[
          Tab(icon: Icon(Icons.directions_car),),
          Tab(icon: Icon(Icons.directions_transit),),
          Tab(icon: Icon(Icons.directions_bike),),
        ],
      ),
      title: Text('Tabs Demo'),
    ),
    body: TabBarView(
      children: <Widget>[
        Icon(Icons.directions_car),
        Icon(Icons.directions_transit),
        Center(
          child: Text('Vishal is great'),
        )
      ],
    ),
  )

);

