import 'package:flutter/material.dart';
import 'dart:async';

enum Action {
  OK,
  CANCEL
}

class AlertDialogDemo extends StatefulWidget {
  @override
  _AlertDialogDemoState createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {
  String _choice = 'nothing';
  Future _openAlerDialog() async {
    final action = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('AlertDialog'),
          content: Text('Are you sure about this?'),
          actions: <Widget>[
            FlatButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.pop(context, Action.CANCEL);
              },
            ),
            FlatButton(
              child: Text('Ok'),
              onPressed: () {
                Navigator.pop(context, Action.OK);
              },
            )
          ],
        );
      }
    );

    switch(action) {
    case Action.OK: setState(() {
     _choice = 'OK';
    });
    break;
    case Action.CANCEL: setState(() {
      _choice = 'CANCEL'; 
    });
    break;
    default:
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialogDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Your Choice is $_choice'),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text('Open AlertDialog'),
                  onPressed: _openAlerDialog,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}