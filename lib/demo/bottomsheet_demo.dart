import 'package:flutter/material.dart';
import 'dart:async';

class BottomSheetDemo extends StatefulWidget {
  @override
  _BottomSheetDemoState createState() => _BottomSheetDemoState();
}

class _BottomSheetDemoState extends State<BottomSheetDemo> {
  final _BottomSheetScaffoldKey = GlobalKey<ScaffoldState>();
  _openBottomSheet() {
    _BottomSheetScaffoldKey.currentState.showBottomSheet(
      (BuildContext context) {
        return BottomAppBar(
          child: Container(
            height: 90.0,
            width: double.infinity,
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                Icon(Icons.pause),
                SizedBox(width: 16.0,),
                Text('01:30/06:30'),
                Expanded(
                  child: Text('Fit you-coldplay', textAlign: TextAlign.center),
                )
              ],
            ),
          ),
        );
      });
  }
  
  _openModalBottomSheet() async {
    final choice = await showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200.0,
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text('Options A'),
              ),
              ListTile(
                title: Text('Options B'),
              ),
              ListTile(
                title: Text('Options C'),
              )
            ],
          ),
        );
      }
    );

    print(choice);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _BottomSheetScaffoldKey,
      appBar: AppBar(
        title: Text('BottomSheetDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Text('Open BottomSheet'),
                  onPressed: _openBottomSheet,
                ),
                FlatButton(
                  child: Text('Open BottomSheetModel'),
                  onPressed: _openModalBottomSheet,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}