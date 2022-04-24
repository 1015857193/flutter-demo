import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class PlatformViewTest extends StatefulWidget {
  @override
  _PlatformViewTestState createState() => _PlatformViewTestState();
}

class _PlatformViewTestState extends State<PlatformViewTest> {


  var text = "获取原生view数据";
  var platforms = [];
  var number = 0;
  var channel = MethodChannel('com.flutter.guide.MethodChannel');

  @override
  void initState()  {
    // TODO: implement initState
    super.initState();

    channel.setMethodCallHandler((call) {
      print(call.arguments["count"]);
      print(call.arguments["name"]);
    });
    test();
  }

  void test() async{

    var result = await channel.invokeMethod("sendData",{"name":"卢三","age":"19"});
    print(result['name']);
  }


  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: _buildColumn(),

    );
  }

  Widget _plantformView() {
    if (Platform.isAndroid) {
      return AndroidView(
        viewType: 'plugins.flutter.io/custom_platform_view',
        creationParams: {'text': 'Flutter传给AndroidTextView的参数'},
        onPlatformViewCreated: (viewId) {
          print('viewId:$viewId');
          platforms
              .add(MethodChannel('com.flutter.guide.FlutterView_$viewId'));
        },
        creationParamsCodec: StandardMessageCodec(),
      );
    } else if (Platform.isIOS) {
      return UiKitView(
        viewType: 'plugins.flutter.io/custom_platform_view',
        onPlatformViewCreated: (viewId) {
          print('viewId:$viewId');
          platforms
              .add(MethodChannel('com.flutter.guide.FlutterView_$viewId'));
        },
        creationParams: {'text': 'Flutter传给IOSTextView的参数'},
        creationParamsCodec: StandardMessageCodec(),
      );
    }
  }

  Widget _buildColumn() {
   return Column(
        children: [
          SizedBox(height: 100),
          RaisedButton(
            child: Text('传递参数给原生View'),
            onPressed: () {
              var index = number % 3;
              platforms[index].invokeMethod('setText', {'name': '卢三', 'age': number+1});
              number ++;
            },
          ),
          RaisedButton(
            child: Text('$text'),
            onPressed: () async {
              var index = number % 3;
             var result = await platforms[index].invokeMethod('getData');
              number ++;
             text = '${result['message']}';
             setState(() {

             });

            },
          ),
          Expanded(child: Container(color: Colors.grey, child: _plantformView())),
          Expanded(child: Container(color: Colors.orange, child: _plantformView())),
          Expanded(child: Container(color: Colors.yellow, child: _plantformView())),
        ]
    );
  }
}


