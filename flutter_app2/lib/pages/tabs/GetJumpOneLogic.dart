import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app2/routes/RouterConfig.dart';


class GetJumpOneLogic extends GetxController {
  var count = 0;

  ///跳转到跨页面
  void toJumpTwo() {
    Get.toNamed(RouterConfig.getJumpTwo, arguments: {'msg': '我是上个页面传递过来的数据'});
  }

  ///跳转到跨页面
  void increase() {
    count++;
    update();
  }
}


class GetJumpOnePage extends StatelessWidget {
  /// 使用Get.put()实例化你的类，使其对当下的所有子路由可用。
  final logic = Get.put(GetJumpOneLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('跨页面-One')),
      floatingActionButton: FloatingActionButton(
        onPressed: () => logic.toJumpTwo(),
        child: const Icon(Icons.arrow_forward_outlined),
      ),
      body: Center(
        child: GetBuilder<GetJumpOneLogic>(
          builder: (logic) {
            return Text('跨页面-Two点击了 ${logic.count} 次',
                style: TextStyle(fontSize: 30.0));
          },
        ),
      ),
    );
  }
}

