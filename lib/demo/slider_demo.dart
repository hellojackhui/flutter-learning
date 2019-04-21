import 'package:flutter/material.dart';

class SliderDemo extends StatefulWidget {
  @override
  _SliderDemoState createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  double _SliderItemA = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SliderDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Slider(
              value: _SliderItemA,
              onChanged: (value) {
                setState(() {
                 _SliderItemA = value; 
                });
              },
              activeColor: Theme.of(context).accentColor,
              inactiveColor: Theme.of(context).accentColor.withOpacity(0.3),
              min: 0.0,
              max: 20.0,
              divisions: 10,
              label: '${_SliderItemA.toInt()}',
            ),
            SizedBox(height: 16.0,),
            Text('Slider value: $_SliderItemA')
          ],
        ),
      )
    );
  }
}