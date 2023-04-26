import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'test_one_logic.dart';

class TestOnePage extends StatefulWidget {
  const TestOnePage({Key? key}) : super(key: key);

  @override
  State<TestOnePage> createState() => _TestOnePageState();
}

class _TestOnePageState extends State<TestOnePage> {
  final logic = Get.put(TestOneLogic());
  final state = Get.find<TestOneLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  @override
  void dispose() {
    Get.delete<TestOneLogic>();
    super.dispose();
  }
}