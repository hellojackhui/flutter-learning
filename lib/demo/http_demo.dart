import 'dart:convert';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;

class HttpDemo extends StatefulWidget {
  @override
  _HttpDemoState createState() => _HttpDemoState();
}

class _HttpDemoState extends State<HttpDemo> {
  @override
  void initState() {
    super.initState();

    final obj = {
      'title': 'hello',
      'data': '1992-23-23',
    };

    final res1 = json.encode(obj);
    print('$res1');
    final res2 = json.decode(res1);
    print('$res2');
    final postModel = Post.fromJson(res2);
    print('${postModel.title}');
    print('${json.encode(postModel)}');
    getData();
  }

  getData() async{
    final response = await http.get('https://resources.ninghao.net/demo/posts.json');
    // print('body: ${response.body}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HttpDemo'),
        elevation: 0.0,
      ),
    );
  }
}


class Post {
  final String title;
  final String description;

  Post(
    this.title,
    this.description
  );

  Post.fromJson(Map json)
    : title = json['title'],
      description = json['description'];

  Map toJson() => {
    'title': title,
    'description': description
  };
}

}