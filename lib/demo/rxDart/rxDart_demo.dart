import 'package:flutter/material.dart';
import 'dart:async';
import 'package:rxdart/rxdart.dart';


class RxDartDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RxDartDemo'),
        elevation: 0.0,
      ),
      body: RxDartDemoHome(),
    );
  }
}

class RxDartDemoHome extends StatefulWidget {
  @override
  _RxDartDemoHomeState createState() => _RxDartDemoHomeState();
}

class _RxDartDemoHomeState extends State<RxDartDemoHome> {
  @override
  void initState() {
    super.initState();
    Observable<String> _observable = 
    // Observable(Stream.fromIterable(['hello', 'jackhui']));
    // Observable.fromFuture(Future.value('hello'));
    // Observable.fromFuture(Future.delayed(Duration(seconds: 5)));
    Observable.periodic(Duration(seconds: 3), (x) => x.toString());
    _observable.listen(print);
  }
  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}