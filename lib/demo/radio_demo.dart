import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  @override
  _radioDemoState createState() => _radioDemoState();
}

class _radioDemoState extends State<RadioDemo> {
  int _radioItemA = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('radioDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('RadioGroupValue: $_radioItemA'),
            SizedBox(height: 32.0),
            RadioListTile(
              value: 0,
              groupValue: _radioItemA,
              onChanged: (value) {
                setState(() {
                 _radioItemA = value; 
                });
              },
              title: Text('Option A'),
              subtitle: Text('Description'),
              secondary: Icon(Icons.filter_1),
              selected: _radioItemA == 0,
            ),
            RadioListTile(
              value: 1,
              groupValue: _radioItemA,
              onChanged: (value) {
                setState(() {
                 _radioItemA = value; 
                });
              },
              title: Text('Option B'),
              subtitle: Text('Description'),
              secondary: Icon(Icons.filter_2),
              selected: _radioItemA == 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Radio(
                //   value: 0,
                //   groupValue: _radioItemA,
                //   onChanged: (value) {
                //     _radioItemA = value;
                //   },
                //   activeColor: Colors.blue,
                // ),
                // Radio(
                //   value: 1,
                //   groupValue: _radioItemA,
                //   onChanged: (value) {
                //     _radioItemA = value;
                //   },
                //   activeColor: Colors.blue,
                // )
              ],
            ),
          ],
        ),
      )
    );
  }
}