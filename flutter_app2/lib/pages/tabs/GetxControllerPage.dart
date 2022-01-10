import 'package:flutter/material.dart';
import 'package:flutter_app2/Class/CustomController.dart';
import 'package:get/get.dart';

class GetxControllerPage extends StatelessWidget {

  // 第一种
  CustomController customController = Get.put(CustomController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("GetX Obx---GetXController"),
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // 第一种
            // Obx(() => Text(
            //   "我的名字是 ${customController.teacher.name}",
            //   style: TextStyle(color: Colors.red, fontSize: 30),
            // )),
            // 第二种
            // GetX<customController>(
            //   init: customController(),
            //   builder: (controller) {
            //     return Text(
            //       "我的名字是 ${controller.teacher.name}",
            //       style: TextStyle(color: Colors.green, fontSize: 30),
            //     );
            //   },
            // ),
            // 第三种
            GetBuilder<CustomController>(
              init: customController,
              builder: (controller) {
                return Text(
                  "我的名字是 ${controller.teacher.name}",
                  style: TextStyle(color: Colors.green, fontSize: 30),
                );
              },
            ),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: () {
                  // 第一种
                  customController.convertToUpperCase();
                  // 第二种
                  // Get.find<CustomController>().convertToUpperCase();

                },
                child: Text("转换为大写"))
          ],
        ),
      ),
    );
  }
}