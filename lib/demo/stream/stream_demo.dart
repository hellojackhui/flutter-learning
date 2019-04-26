import 'package:flutter/material.dart';
import 'dart:async';

class StreamDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StreamDemo'),
        elevation: 0.0,
      ),
      body: StreamDemoHome(),
    );
  }
}

class StreamDemoHome extends StatefulWidget {
  @override
  _StreamDemoHomeState createState() => _StreamDemoHomeState();
}

class _StreamDemoHomeState extends State<StreamDemoHome> {

  StreamSubscription _streamDemoSubscription;
  StreamController<String> _streamDemo;
  StreamSink _sinkDemo;
  String _data = '...';

  @override
  void dispose() {
    _streamDemo.close();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    print('Create a stream');
    _streamDemo = StreamController<String>();
    _sinkDemo = _streamDemo.sink;

    // Stream<String> _streamDemo = Stream.fromFuture(fetchData());

    print('Start listen a stream');
    _streamDemo = StreamController.broadcast();
    _streamDemoSubscription = _streamDemo.stream.listen(onData, onDone: onDone, onError: onError);
    _streamDemo.stream.listen(onDataTwo, onDone: onDone, onError: onError);
  }

  void onError(error) {
    print('$error');
  }

  void onDone() {
    print('Done');
  }

  void onData(String data) {
    setState(() {
      _data = data;
    });
    print('$data');
  }

  void onDataTwo(String data) {
    print('onDataTwo: $data');
  }

  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 5));
    // throw 'Something Happened!';
    return 'Hello ~';
  }

  void _pauseStream() {
    print('pauseSubscription');
    _streamDemoSubscription.pause();
  }

  void _resumeStream() {
    print('resumeSubscription');
    _streamDemoSubscription.resume();
  }

  void _cancelStream() {
    print('cancelSubscription');
    _streamDemoSubscription.cancel();
  }

  void _addDataToStream() async {
    String data = await fetchData();
    // _streamDemo.add(data);
    _sinkDemo.add(data);

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Text(_data),
            StreamBuilder(
              stream: _streamDemo.stream,
              initialData: '...',
              builder: (context, snapshot) {
                return Text('${snapshot.data}');
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Text('Pause'),
                  onPressed: _pauseStream,
                ),
                FlatButton(
                  child: Text('Resume'),
                  onPressed: _resumeStream,
                ),
                FlatButton(
                  child: Text('Cancel'),
                  onPressed: _cancelStream,
                ),
                FlatButton(
                  child: Text('Add'),
                  onPressed: _addDataToStream,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


// 1. 在initState中，设置String<String> _streamDemo = Stream.fromfutrue(fetchData());
// 而后使用_streamDemo.Listen（Ondata）方法进行监听
// Ondata是一个函数，用于返回监听了fetchData返回的值
// fetchData 是一个异步方法,所以使用async/await进行异步处理；


// 2. 使用streamsubscription把监听的stream进行维护
// 而后可以使用_streamDemoSubscription的resume,pause,cancel方法

// 3. 使用streamController进行控制stream
// 初始化使用_streamDemo = StreamController<String>(); 和 在initstate中进行
// _streamDemo = StreamController<String>(); 而后使用_streamDemo.stream.listen进行监听
// 监听获取到的数据使用add方法