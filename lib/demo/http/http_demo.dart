import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class HttpDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HttpDemo'),
        elevation: 0.0,
      ),
      body: HttpDemoHome(),
    );
  }
}

class HttpDemoHome extends StatefulWidget {
  @override
  _HttpDemoHomeState createState() => _HttpDemoHomeState();
}

class _HttpDemoHomeState extends State<HttpDemoHome> {
  @override
  void initState() {
    super.initState();

//    final post = {
//      'title': 'hello',
//      'description': 'nice to meet you',
//    };

    fetchPosts().then((value) => print(value));
  }

  Future<List<Post>> fetchPosts() async {
    final responce =
        await http.get('https://resources.ninghao.net/demo/posts.json');

    if (responce.statusCode == 200) {
      final responceBody = json.decode(responce.body);
      List<Post> posts = responceBody['posts']
          .map<Post>((item) => Post.fromjson(item))
          .toList();

      return posts;
    } else {
      throw Exception('Failed to ferch posts');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: fetchPosts(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          print('data: ${snapshot.data}');
          print('connectionState: ${snapshot.connectionState}');

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: Text('loding'),
            );
          }
          return ListView(
            children: snapshot.data.map<Widget>((item) {
              return ListTile(
                title: Text(item.title),
                subtitle: Text(item.author),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(item.imageUrl),
                ),
              );
            }).toList(),
          );
        });
  }
}

class Post {
  final int id;
  final String title;
  final String description;
  final String author;
  final String imageUrl;

  Post(
    this.description,
    this.title,
    this.author,
    this.id,
    this.imageUrl,
  );

  Post.fromjson(Map json)
      : title = json['title'],
        description = json['description'],
        id = json['id'],
        author = json['author'],
        imageUrl = json['imageUrl'];

  Map toJson() => {
        'title': title,
        'description': description,
      };
}
