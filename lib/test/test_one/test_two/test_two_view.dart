import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'test_two_logic.dart';

class TestTwoPage extends StatelessWidget {
  const TestTwoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.put(TestTwoLogic());
    final state = Get.find<TestTwoLogic>().state;

    return Container();
  }
}
