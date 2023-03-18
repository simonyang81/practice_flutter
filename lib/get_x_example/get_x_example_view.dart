import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'get_x_example_logic.dart';

class GetXExamplePage extends StatefulWidget {
  const GetXExamplePage({Key? key}) : super(key: key);

  @override
  State<GetXExamplePage> createState() => _GetXExamplePageState();
}

class _GetXExamplePageState extends State<GetXExamplePage> {
  final logic1 = Get.put(GetXExampleLogic());
  final logic2 = Get.put(GetXExampleLogic());
  final state = Get
      .find<GetXExampleLogic>()
      .state;

  RxString? _context;

  @override
  void initState() {
    super.initState();
    _context = RxString('Hello, world');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Obx(() {
        return Text(
          _context != null ? _context!.value : '', style: const TextStyle(color: Colors.black, fontSize: 18),);
      })),
      floatingActionButton: IconButton(icon: const Icon(Icons.add, color: Colors.purple), onPressed: () => _context!.value = 'Simon',),
    );
  }

  @override
  void dispose() {
    Get.delete<GetXExampleLogic>();
    super.dispose();
  }
}