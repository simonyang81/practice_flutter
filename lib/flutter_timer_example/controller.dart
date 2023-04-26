import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// FileName controller
/// 
/// @Author 杨雪松
/// @Email simonyang81@gmail.com
/// @Date 2023/4/20 17:52
///
/// @Description
///
///


class Controller extends GetxController {
  var count = 0.obs;

  @override
  void onReady() {
    super.onReady();
    debugPrint('#Controller.onReady#');
  }

  void increment() {
    count++;
  }

  @override
  void onClose() {
    debugPrint('#Controller.onClose#');
    super.onClose();
  }

}
