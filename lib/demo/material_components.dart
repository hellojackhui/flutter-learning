import 'package:flutter/material.dart';
import './checkbox_demo.dart';
import './radio_demo.dart';
import './switch_demo.dart';
import './slider_demo.dart';
import './datetime_demo.dart';
import './simpleDialog_demo.dart';
import './expansionpanel_demo.dart';
class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialComponents'),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(title: 'ButtonDemo',page: ButtonDemo(),),
          ListItem(title: 'FloatingActionButtonDemo',page: FloatingActionButtonDemo(),),
          ListItem(title: 'CheckBox', page: CheckBoxDemo(),),
          ListItem(title: 'radioBox', page: RadioDemo(),),
          ListItem(title: 'SwitchBox', page: SwitchDemo(),),
          ListItem(title: 'SliderBox', page: SliderDemo(),),
          ListItem(title: 'DateTime', page: DateTimeDemo(),),
          ListItem(title: 'SimpleDialog', page: SimpleDialogDemo(),),
          ListItem(title: 'Expansionpanel', page: ExpansionpanelDemo(),),
        ],
      ),
    );
  }
}

class FloatingActionButtonDemo extends StatelessWidget {
  final Widget _floatingActionButton = FloatingActionButton(
    backgroundColor: Colors.black87,
    child: Icon(Icons.add),
    elevation: 0.0,
    onPressed: () {},
  );

  final Widget _floatingActionButtonExteed = FloatingActionButton.extended(
    icon: Icon(Icons.add),
    label: Text('add'),
    onPressed: () {},
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButtonDemo'),
        elevation: 0.0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _floatingActionButton,
      // floatingActionButton: _floatingActionButtonExteed,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 90.0,
        ),
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget FlatButtonDemo = Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Text('button'),
                  onPressed: () {},
                  splashColor: Colors.grey,
                  textColor: Theme.of(context).accentColor,
                ),
                FlatButton.icon(
                  icon: Icon(Icons.add),
                  onPressed: () {},
                  label: Text('Button'),
                  splashColor: Colors.grey,
                  textColor: Theme.of(context).accentColor,
                )
              ],
            );

    final Widget RaisedButtonDemo = Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Theme(
                  data: Theme.of(context).copyWith(
                    buttonColor: Theme.of(context).accentColor,
                    buttonTheme: ButtonThemeData(
                      textTheme: ButtonTextTheme.primary,
                      shape: StadiumBorder()
                    ),
                  ),
                  child: RaisedButton(
                    child: Text('button'),
                    onPressed: () {},
                    splashColor: Colors.grey,
                    elevation: 12.0,
                  ),
                ),
                RaisedButton(
                  child: Text('button'),
                  onPressed: () {},
                  splashColor: Colors.grey,
                  textColor: Theme.of(context).accentColor,
                  elevation: 12.0,
                ),
                SizedBox(width: 10.0),
                RaisedButton.icon(
                  icon: Icon(Icons.add),
                  onPressed: () {},
                  label: Text('Button'),
                  splashColor: Colors.grey,
                  textColor: Theme.of(context).accentColor,
                )
              ],
            );

    final Widget OutLineButtonDemo = Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                OutlineButton(
                  child: Text('button'),
                  onPressed: () {},
                  splashColor: Colors.grey,
                  textColor: Theme.of(context).accentColor,
                  borderSide: BorderSide(
                    color: Colors.black
                  ),
                  highlightedBorderColor: Colors.grey[100],
                ),
                SizedBox(width: 10.0,),
                OutlineButton.icon(
                  icon: Icon(Icons.add),
                  onPressed: () {},
                  label: Text('Button'),
                  splashColor: Colors.grey,
                  textColor: Theme.of(context).accentColor,
                )
              ],
            );

    final Widget ExpandButtonDemo = Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: OutlineButton(
                    child: Text('button'),
                    onPressed: () {},
                    splashColor: Colors.grey,
                    textColor: Theme.of(context).accentColor,
                    borderSide: BorderSide(
                      color: Colors.black
                    ),
                    highlightedBorderColor: Colors.grey[100],
                  ),
                ),
                SizedBox(width: 10.0,),
                Expanded(
                  flex: 2,
                  child: OutlineButton.icon(
                    icon: Icon(Icons.add),
                    onPressed: () {},
                    label: Text('Button'),
                    splashColor: Colors.grey,
                    textColor: Theme.of(context).accentColor,
                  ),
                )
              ],
            );

    
    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(6.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButtonDemo,
            RaisedButtonDemo,
            OutLineButtonDemo,
            ExpandButtonDemo
          ],
        ),
      ),
    );
  }
}

class _WidgetDemo extends StatelessWidget {
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

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({
    this.title,
    this.page
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => page)
        );
      },
    );
  }
}

class PopMenuButtonDemo extends StatefulWidget {
  @override
  _PopMenuButtonDemoState createState() => _PopMenuButtonDemoState();
}

class _PopMenuButtonDemoState extends State<PopMenuButtonDemo> {
  String _selectItem = 'Home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PopMenuButtonDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(_selectItem),
                PopupMenuButton(
                  onSelected: (value) {
                    print(value);
                    setState(() {
                     _selectItem = value; 
                    });
                  },
                  itemBuilder: (BuildContext context) => [
                    PopupMenuItem(
                      value: 'Home',
                      child: Text('Home'),
                    ),
                    PopupMenuItem(
                      value: 'Home',
                      child: Text('Home'),
                    ),
                    PopupMenuItem(
                      value: 'Home',
                      child: Text('Home'),
                    )
                  ]
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}