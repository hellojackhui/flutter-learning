import 'package:flutter/material.dart';

class SwitchDemo extends StatefulWidget {
  @override
  _SwitchDemoState createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  bool _switchItemA = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SwitchDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SwitchListTile(
              value: _switchItemA,
              onChanged: (value) {
                setState(() {
                 _switchItemA = value; 
                });
              },
              title: Text('SwitchListTile A'),
              subtitle: Text('subTitle'),
              secondary: Icon(_switchItemA ? Icons.visibility : Icons.visibility_off),
              selected: true,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Text(_switchItemA ? '😀' : '😭', style: TextStyle(fontSize: 32.0),),
                // Switch(
                //   value: _switchItemA,
                //   onChanged: (value) {
                //     setState(() {
                //       _switchItemA = value;
                //     });
                //   },
                // )
              ],
            ),
          ],
        ),
      )
    );
  }
}