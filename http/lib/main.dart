import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;



Future<Post> fetchPost() async{
  final response = await http.get('https://jsonplaceholder.typicode.com/posts/1');

  if (response.statusCode == 200) {
    return Post.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed To Load Post');
  }
}

class Post{
  final int userId;
  final int id;
  final String title;
  final String body;

  Post({this.userId, this.id, this.title, this.body});

  factory Post.fromJson(Map<String, dynamic> json){
    return Post(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }

}






void main() => runApp(MyApp(post: fetchPost(),));







class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  final Future<Post> post;

  MyApp({Key key, this.post}) : super(key: key);

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
          child: FutureBuilder<Post>(
            future: post,
            builder: (context, snapshot){
              if (snapshot.hasData) {
                return ListView(
                  children: <Widget>[
                    Center(
                      child: Text(snapshot.data.title),
                    ),
                    Center(
                      child: Text(snapshot.data.body),
                    ),
                  ],
                );
                // return Text(snapshot.data.title);
              } else if(snapshot.hasError){
                return Text("${snapshot.error}");
              }
              
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}


