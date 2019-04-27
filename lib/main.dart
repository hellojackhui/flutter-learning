import 'package:flutter/material.dart';
import 'package:myapp/demo/Bloc/Bloc_demo.dart';
import 'package:myapp/demo/rxDart/rxDart_demo.dart';
import './demo/drawer_demo.dart';
import './demo/bottomNavigationBar_demo.dart';
import './demo/basic_demo.dart';
import './demo/layout_demo.dart';
import './demo/view_demo.dart';
import './demo/sliver_demo.dart';
import './demo/router_demo.dart';
import './demo/form_demo.dart';
import './demo/material_components.dart';
// import 'package:myapp/demo/state/state-management.dart';
import './demo/stream/stream_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: NavigatorDemo(),
      initialRoute: '/Bloc',
      routes: {
        '/': (context) => Home(),
        '/about': (context) => Page(title: 'About',),
        '/form': (context) => FormDemo(),
        '/mdc': (context) => MaterialComponents(),
        // '/state-management': (context) => StateManagementDemo(),
        '/stream': (context) => StreamDemo(),
        '/rxDart': (context) => RxDartDemo(),
        '/Bloc': (context) => BlocDemo(),
      },
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('jackhui'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Navigation',
              onPressed: () => debugPrint('hello,moto'),
            ),
          ],
          elevation: 0.0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black12,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.local_florist),
              ),
              Tab(
                icon: Icon(Icons.change_history)
              ),
              Tab(
                icon: Icon(Icons.directions_bike),
              ),
              Tab(
                icon: Icon(Icons.phone),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            SliverDemo(),
            // Icon(Icons.change_history, size: 128.0,color: Colors.black12,),
            ContainerDemo(),
            // Icon(Icons.directions_bike, size: 128.0,color: Colors.black12,) 
            LayoutDemo(),
            ViewDemo(),
          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: bottomNavigationBarDemo(),
      ),
    );
  }
}