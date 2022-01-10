import 'package:get/get.dart';
import 'package:flutter_app2/Class/Teacher.dart';

class CustomController extends GetxController {

  // 第一种
  // var teacher = Teacher();
  //
  // void convertToUpperCase() {
  //   teacher.name.value = teacher.name.value.toUpperCase();
  // }

  // 第二种
  // var teacher =  Teacher(name: "Jimi", age: 18).obs;
  // void convertToUpperCase() {
  //   teacher.update((val) {
  //     teacher.value.name = teacher.value.name.toString().toUpperCase();
  //   });
  // }

  // 第三种
  var teacher = Teacher();

  void convertToUpperCase() {
    teacher.name.value = teacher.name.value.toUpperCase();
    update();
  }
}