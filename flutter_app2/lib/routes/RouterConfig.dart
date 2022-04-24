import 'package:flutter_app2/pages/tabs/GetJumpTwoLogic.dart';
import 'package:flutter_app2/pages/tabs/GetJumpOneLogic.dart';
import 'package:get/get.dart';
import '../pages/Tabs.dart';
import '../pages/Swiper.dart';
import '../pages/Dialog.dart';

class RouterConfig {

  static const String main = '/';

  static const String swiper = '/swiper';

  static const String dialog = '/dialog';

  static const String getJumpTwo = '/jumpTwo';
  static const String getJumpOne = '/jumpOne';

  static final List<GetPage> getPages = [


    GetPage(name: main,page: () => Tabs()),

    GetPage(name: swiper,page: () => SwiperPage()),

    GetPage(name: dialog,page: () => DialogPage()),

    GetPage(name: getJumpOne,page: () => GetJumpOnePage()),

    GetPage(name: getJumpTwo,page: () => GetJumpTwoPage()),

  ];



}