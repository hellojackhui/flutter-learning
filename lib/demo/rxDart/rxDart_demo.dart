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

  PublishSubject<String> _textFieldSubject;


  @override
  void initState() {
    super.initState();

    _textFieldSubject = PublishSubject<String>();

    _textFieldSubject
    .debounce(Duration(microseconds: 500))
    .listen((data) =>print(data));

    // Observable<String> _observable = 
    // Observable(Stream.fromIterable(['hello', 'jackhui']));
    // Observable.fromFuture(Future.value('hello'));
    // Observable.fromFuture(Future.delayed(Duration(seconds: 5)));
    // Observable.periodic(Duration(seconds: 3), (x) => x.toString());
    // _observable.listen(print);

    // PublishSubject<String> _subject = PublishSubject<String>();  每一个数据智能被监听一次
    // BehaviorSubject<String> _subject = BehaviorSubject<String>();  将最后的add作为消息监听的数据，最后的数据被所有监听器监听
    // ReplaySubject<String> _subject = ReplaySubject<String>(); // 将所有监听的数据都交给observable，每个数据都会被所有监听器监听一次
    
    // _subject.add('hello');
    // _subject.add('hell02');
    // _subject.listen((data) => print('listen 1: $data'));
    // _subject.listen((data) => print('listen 2: ${data.toUpperCase()}'));
    // _subject.close();
  }

  @override
  void dispose() {
    _textFieldSubject.close();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        primaryColor: Colors.black,
      ),
      child: TextField(
        onChanged: (value) {
          _textFieldSubject.add('input: $value');
        },
        onSubmitted: (value) {
          _textFieldSubject.add('submit: $value');
        },
        decoration: InputDecoration(
          labelText: 'Title',
          filled: true
        ),
      ),
    );
  }
}