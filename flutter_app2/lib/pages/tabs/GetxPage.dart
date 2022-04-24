import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app2/Class/Teacher.dart';
import 'package:flutter_app2/dio_util/dio_response.dart';
import 'package:get/get.dart';
import 'dart:ffi';
import 'package:flutter_app2/pages/tabs/Home.dart';

import 'GetxControllerPage.dart';
import 'package:flutter_app2/pages/tabs/GetxControllerUniqueIDPage.dart';
import 'package:flutter_app2/dio_util/dio_util.dart';
import 'package:flutter_app2/dio_util/dio_method.dart';


class GetxPage extends StatelessWidget {


 // RxInt count = RxInt(0);
  var count = 0.obs;

  void increment() {
    count++;
  }

  var teacher = Teacher();
  bool isChangeTheme = false;


  @override
  Widget build(BuildContext context) {
    return _buildScaffold1();
    //  home: GetxControllerPage(),
     // home: GetxControllerUniqueIDPage(),
  }

  Scaffold _buildScaffold1() {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("GetX Title"),
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Text(
              "count的值为: $count",
              style: TextStyle(color: Colors.red, fontSize: 30),
            )),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: () async {
                  increment();
                //  Get.to(HomePage());
                  //切换主题
                  if(!isChangeTheme ){
                    Get.changeTheme(ThemeData.dark());
                  }else{
                    Get.changeTheme(ThemeData.light());
                  }
                  isChangeTheme = !isChangeTheme;

                  // var response = await Dio().get("http://apis.juhe.cn/fapig/douyin/billboard",queryParameters: {
                  //     "type":"hot_video",
                  //     "size":"50",
                  //     "key":"9eb8ac7020d9bea6048db1f4c6b6d028"
                  // });
                  // if (response.statusCode == 200) {
                  //   var jsonString = response.data['result'];
                  // }
              //     DioUtil.instance.openLog();
              // var result = await DioUtil().request("/fapig/douyin/billboard",method: DioMethod.get,params: {
              //   "type":"hot_video",
              //   "size":"50",
              //   "key":"9eb8ac7020d9bea6048db1f4c6b6d028"
              //
              // });
             // print(result);
              },
                child: Text("点我加1"))
            // Obx(() => Text(
            //   "我的名字是 ${teacher.name.value}",
            //   style: TextStyle(color: Colors.red, fontSize: 30),
            // )),
            // SizedBox(height: 20,),
            // ElevatedButton(
            //     onPressed: () {
            //       teacher.name.value = teacher.name.value.toUpperCase();
            //     },
            //     child: Text("转换为大写"))
          ],
        ),
      ),
    );
  }

}

