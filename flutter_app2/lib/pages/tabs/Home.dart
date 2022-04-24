import 'package:flutter/material.dart';
import 'package:flutter_app2/pages/Swiper.dart';
import 'package:flutter_app2/routes/RouterConfig.dart';
import '../../components/MyDialog.dart';
import 'package:flutter_app2/pages/sport_record_page.dart';
import 'package:flutter_app2/pages/sport_grid_view.dart';
import 'package:flutter_app2/pages/tabs/GetJumpOneLogic.dart';
import 'package:flutter_app2/routes/RouterConfig.dart';
import 'package:get/get.dart';
import 'dart:async';


class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(       
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            RaisedButton(
              child: Text('跳转到轮播图页面'),
              onPressed: (){
               Get.toNamed(RouterConfig.swiper, arguments: {'desc': '一个轮播图'});
             //  Get.toNamed(RouterConfig.swiper);
              //   Navigator.push(context,
              //       MaterialPageRoute(builder: (BuildContext context) {
              //         return SwiperPage(arguments: {'desc': '一个轮播图'},);
              //       }));
              },
            ),
            SizedBox(height: 20),
            RaisedButton(
              child: Text('跳转到Dialog页面'),
              onPressed: (){
                //  Navigator.pushNamed(context, '/dialog');
                  Get.toNamed(RouterConfig.dialog);
              },
            ),
            SizedBox(height: 20),
            RaisedButton(
              child: Text('显示自定义Dialog'),
              onPressed: (){
                  // print("显示自定义组件");

                  showDialog(
                    context: context,
                    builder: (context){
                      return MyDialog(
                        title:"关于我们",
                        content:"关于我们"
                      );
                    }
                  );
              },
            ),
          SizedBox(height: 20),
          RaisedButton(
            child: Text('自定义页面'),
            onPressed: (){

              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                    return SportRecordMachine();
                  }));

              // Navigator.push(context,
              //     MaterialPageRoute(builder: (BuildContext context) {
              //       return FlutterGridView();
              //     }));
            },
          ),
          SizedBox(height: 20),
          RaisedButton(
            child: Text('Getx'),
            onPressed: (){

              Get.toNamed(RouterConfig.getJumpOne);

              // Navigator.push(context,
              //     MaterialPageRoute(builder: (BuildContext context) {
              //       return GetJumpOnePage();
              //     }));

              // Navigator.push(context,
              //     MaterialPageRoute(builder: (BuildContext context) {
              //       return FlutterGridView();
              //     }));
            },
          ),

        ]
      ),
    );
  }
}
