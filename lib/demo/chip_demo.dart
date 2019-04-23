import 'package:flutter/material.dart';

class ChipDemo extends StatelessWidget {
  List <String> list = [
    'Apple',
    'Banana',
    'Lemon'
  ];
  String _action = 'nothing';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ChipDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: <Widget>[
                Chip(
                  label: Text('jackhui'),
                ),
                Chip(
                  label: Text('jackhui'),
                  backgroundColor: Colors.orange,
                ),
                Chip(
                  label: Text('jackhui'),
                  onDeleted: () {},
                  deleteIcon: Icon(Icons.delete),
                  avatar: CircleAvatar(
                    backgroundColor: Colors.orange,
                    child: Text('D'),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  height: 32.0,
                  indent: 32.0,
                ),
                Wrap(
                  spacing: 8.0,
                  children: list.map((tag) {
                    return Chip(
                      label: Text(tag),
                      onDeleted: () {
                        // setState(() {
                        //   list.remove(tag);
                        // });
                      },
                    );
                  }).toList(),
                ),
                Divider(
                  color: Colors.grey,
                  height: 32.0,
                  indent: 32.0,
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Text(_action),
                ),
                Wrap(
                  spacing: 8.0,
                  children: list.map((tag) {
                    return ActionChip(
                      label: Text(tag),
                      onPressed: () {
                        print(tag);
                        // setState(() {
                        //   _action = tag;
                        // });
                      },
                    );
                }).toList(),
                )
              ],
            ),
            
          ],
          
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore),
        onPressed: () {
          // setState(() {
          //   list = [
          //     'apple',
          //     'banana',
          //     'lemon'
          //   ];
          // });
        },
      ),
    );
  }
}