import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestGetxLogic extends GetxController {

  @override
  void onInit() {
    super.onInit();
    debugPrint('-->> TestGetxLogic onInit');
  }

  @override
  void onReady() {
    super.onReady();
    debugPrint('-->> TestGetxLogic onReady');
  }

  @override
  void onClose() {
    debugPrint('-->> TestGetxLogic onClose');
    super.onClose();
  }
}
