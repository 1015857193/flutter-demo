import 'dart:async';

import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  SettingPage({Key key}) : super(key: key);

  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Column(
          children: <Widget>[
            ListTile(
              title: Text("我是一个文本"),
            ),
            ListTile(
              title: Text("我是一个文本"),
            ),
            ListTile(
              title: Text("我是一个文本"),
            ),
            ListTile(
              title: Text("我是一个文本"),
            )
          ],
        )
      ],
    );
  }
}

class StreamDemo2 extends StatefulWidget {
  @override
  _StreamDemo2State createState() => _StreamDemo2State();
}

class _StreamDemo2State extends State<StreamDemo2> {
  StreamController<int> _streamController;
  var _counter = 0;

  @override
  void initState() {
    _streamController = StreamController<int>();
    super.initState();
  }

  @override
  void dispose() {
    _streamController.close();
    super.dispose();
  }

  Stream<int> counter() {
    return _streamController.stream;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('StreamDemo2')),
      body: Center(
        child: StreamBuilder<int>(
            initialData: 0,
            stream: counter(),
            builder: (context, AsyncSnapshot<int> snapshot) {
              return Text(
                '${snapshot.data}',
                style: TextStyle(fontSize: 24.0),
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _streamController.add(++_counter);
        },
      ),
    );
  }
}