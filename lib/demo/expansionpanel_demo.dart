import 'package:flutter/material.dart';
import 'dart:async';

class ExpansionPanelItem {
  final String headerText;
  final Widget body;
  bool isExpanded;

  ExpansionPanelItem({
    this.headerText,
    this.body,
    this.isExpanded
  });
}


class ExpansionpanelDemo extends StatefulWidget {
  @override
  _ExpansionpanelDemoState createState() => _ExpansionpanelDemoState();
}

class _ExpansionpanelDemoState extends State<ExpansionpanelDemo> {
  bool _isExpanded = false;
  List <ExpansionPanelItem> _expansionPanelItems;

  @override
  void initState() {
    super.initState();

    _expansionPanelItems = <ExpansionPanelItem>[
      ExpansionPanelItem(
        headerText: 'Panel A',
        body: Container(
          padding: EdgeInsets.all(16.0),
          width: double.infinity,
          child: Text('Content for Panel A'),
        ),
        isExpanded: false
      ),
      ExpansionPanelItem(
        headerText: 'Panel B',
        body: Container(
          padding: EdgeInsets.all(16.0),
          width: double.infinity,
          child: Text('Content for Panel A'),
        ),
        isExpanded: false
      ),
      ExpansionPanelItem(
        headerText: 'Panel C',
        body: Container(
          padding: EdgeInsets.all(16.0),
          width: double.infinity,
          child: Text('Content for Panel A'),
        ),
        isExpanded: false
      ),
    ];
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ExpansionpanelDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ExpansionPanelList(
                  expansionCallback: (int panelIndex, bool isExpanded) {
                    setState(() {
                     _isExpanded = !isExpanded; 
                    });
                  },
                  children: _expansionPanelItems.map(
                    (ExpansionPanelItem item) {
                        return ExpansionPanel(
                          isExpanded: item.isExpanded,
                          body: item.body,
                          headerBuilder: (BuildContext context, bool isExpanded) {
                            return Container(
                              padding: EdgeInsets.all(16.0),
                              child: Text(
                                'Panel A',
                                style: Theme.of(context).textTheme.title
                              ),
                            );
                          }
                        );
                    }
                  ).toList()
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}