import 'package:flutter/material.dart';

// void main() => runApp(MyApp());
// void main(){
//   runApp(MaterialApp(
//     title: 'Navigation Basics',
//     home: FirstRoute(),
//   ));
// }
void main(){
  runApp(MaterialApp(
    title: 'Navigation Basics',
    initialRoute: '/',
    routes: {
      '/': (context) => FirstRoute(),
      '/second': (context) => SecondRoute(),
    },
  ));
}

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
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}



class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Vishal Activity 1'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Open Route'),
          onPressed: (){
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => SecondRoute()) 
            // );
            Navigator.pushNamed(context, '/second');
          },
        ),
      ),
    );
  }
}



class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Vishal Activity 2'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('GoBack'),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}