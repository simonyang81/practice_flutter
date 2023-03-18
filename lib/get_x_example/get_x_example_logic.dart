import 'package:f_logs/f_logs.dart';
import 'package:get/get.dart';

import 'get_x_example_state.dart';


class GetXExampleLogic extends GetxController {
  final GetXExampleState state = GetXExampleState();

  @override
  void onReady() {
    super.onReady();
    FLog.info(text: '##GetXExampleLogic.onReady##');
  }

  @override
  void onClose() {
    super.onClose();
  }
}
