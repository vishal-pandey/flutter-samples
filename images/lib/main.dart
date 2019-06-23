import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';


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
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Layout Demo'),
        ),
        body: ListView(
          children: <Widget>[
            Center(
              child: Image.network('https://picsum.photos/250?image=9'),
            ),
            Center(
              child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: 'https://picsum.photos/250?image=11',
              ),
            )
          ],
        )
      ),
    );
  }
}


