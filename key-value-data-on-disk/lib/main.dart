
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  
  
  _incrementCounter() async{
    final pref = await SharedPreferences.getInstance();
    int myCounter = (pref.getInt('counter') ?? 0) + 1;
    print('Pressed $myCounter times.');
    await pref.setInt('counter', myCounter);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Layout Demo'),
        ),
        body: ListView(
          children: <Widget>[
            Text('See Debug console for the output'),
            RaisedButton(
              child: Text('Click Here'),
              onPressed: (){
                _incrementCounter();
              },
            )
          ],
        )
      ),
    );
  }
}


