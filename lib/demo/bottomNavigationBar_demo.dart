import 'package:flutter/material.dart';

class bottomNavigationBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _bottomNavigationBarDemo()
}

class _bottomNavigationBarDemo extends State<bottomNavigationBarDemo> {
  int _currentIndex = 0;
  void _changeIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _changeIndex,
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.red,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              title: Text('Explore')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              title: Text('History')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              title: Text('List')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('My')
            ),
          ],
        );
  }
}