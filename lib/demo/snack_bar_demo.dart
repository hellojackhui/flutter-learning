import 'package:flutter/material.dart';
import 'dart:async';


class SnackBarDemo extends StatefulWidget {
  @override
  _SnackBarDemoState createState() => _SnackBarDemoState();
}

class _SnackBarDemoState extends State<SnackBarDemo> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBarDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Your Choice is $_choice'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SnackBarButton()
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SnackBarButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text('Open SnacBar'),
      onPressed: () {
        Scaffold.of(context).showSnackBar(
          SnackBar(
            content: Text('processing'),
            action: SnackBarAction(
              label: 'Ok',
              onPressed: () {
                
              },
            ),
          )
        );
      },
    );
  }
}