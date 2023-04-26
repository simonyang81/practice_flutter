import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'get_x_example_logic.dart';

class GetXExamplePage extends StatefulWidget {
  const GetXExamplePage({Key? key}) : super(key: key);

  @override
  State<GetXExamplePage> createState() => _GetXExamplePageState();
}

class _GetXExamplePageState extends State<GetXExamplePage> {
  

  final _name = ''.obs;
  get name => _name.value;
  set name(val) => _name.value = val;


  final logic1 = Get.put(GetXExampleLogic());
  final logic2 = Get.put(GetXExampleLogic());
  final state = Get
      .find<GetXExampleLogic>()
      .state;

  RxString? _content;

  @override
  void initState() {
    super.initState();
    _content = RxString('Hello, world');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Obx(() {
        return Text(
          _content != null ? _content!.value : '', style: const TextStyle(color: Colors.black, fontSize: 18),);
      })),
      floatingActionButton: IconButton(icon: const Icon(Icons.add, color: Colors.purple), onPressed: () => _content!.value = 'Simon',),
    );
  }

  @override
  void dispose() {
    Get.delete<GetXExampleLogic>();
    super.dispose();
  }
}