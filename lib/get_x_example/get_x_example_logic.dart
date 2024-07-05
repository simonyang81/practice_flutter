import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'get_x_example_state.dart';


class GetXExampleLogic extends GetxController {
  final GetXExampleState state = GetXExampleState();

  @override
  void onReady() {
    super.onReady();
    debugPrint('#GetXExampleLogic.onReady#');
  }

  @override
  void onClose() {
    debugPrint('#GetXExampleLogic.onClose#');
    super.onClose();
  }
}
