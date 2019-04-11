import 'package:flutter/material.dart';

class NavigatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text('Home'),
              onPressed: null,
            ),
            FlatButton(
              child: Text('About'),
              onPressed: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (BuildContext context) => Page(title: 'jackhui')
                //   )
                // );
                Navigator.pushNamed(context, '/about');
              }
            ),
            FlatButton(
              child: Text('form'),
              onPressed: () {
                Navigator.pushNamed(context, '/form');
              },
            )
          ],
        ),
      ),
    );
  }
}

class Page extends StatelessWidget {
  final String title;
  Page({
    this.title
  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}