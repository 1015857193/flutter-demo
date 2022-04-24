import 'package:flutter/material.dart';
import 'package:flutter_app2/routes/RouterConfig.dart';
import 'routes/Routes.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner:false ,  //去掉debug图标
      // home:Tabs(),
      initialRoute: RouterConfig.main,     //初始化的时候加载的路由
    //  onGenerateRoute: onGenerateRoute,
      getPages: RouterConfig.getPages,
    );
  }
}
