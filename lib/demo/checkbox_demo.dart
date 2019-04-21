import 'package:flutter/material.dart';

class CheckBoxDemo extends StatefulWidget {
  @override
  _CheckBoxDemoState createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {
  bool _checkItemA = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('_WidgetDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(6.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CheckboxListTile(
              value: _checkItemA,
              onChanged: (value) {
                setState(() {
                  _checkItemA = value;
                });
              },
              title: Text('Checkbox Item A'),
              subtitle: Text('Description'),
              secondary: Icon(Icons.book),
              selected: _checkItemA,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                
              ],
            )
          ],
        ),
      ),
    );
  }
}