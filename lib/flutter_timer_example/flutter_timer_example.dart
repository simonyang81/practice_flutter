/// FileName flutter_timer_example
/// 
/// @Author 杨雪松
/// @Email simonyang81@gmail.com
/// @Date 2023/4/20 17:51
///
/// @Description
///
///

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class FlutterTimerExample extends StatelessWidget {

  const FlutterTimerExample({super.key});

  @override
  Widget build(context) {
    // 使用Get.put()实例化你的类，使其对当下的所有子路由可用。
    final Controller c = Get.put(Controller());

    return Scaffold(
      // 使用Obx(()=>每当改变计数时，就更新Text()。
        appBar: AppBar(title: Obx(() => Text("Clicks: ${c.count}"))),

        // 用一个简单的Get.to()即可代替Navigator.push那8行，无需上下文！
        body: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return Text('Count: ${c.count}', style: const TextStyle(fontSize: 30),);
            }),
            const SizedBox(height: 20,),
            ElevatedButton(
                child: const Text("Go to Other"), onPressed: () => Get.to(() => OtherPage())),
          ],
        )),
        floatingActionButton:
        FloatingActionButton(onPressed: c.increment, child: const Icon(Icons.add)));
  }


}

class OtherPage extends StatelessWidget {
  // 你可以让Get找到一个正在被其他页面使用的Controller，并将它返回给你。
  final Controller c = Get.find();

  OtherPage({super.key});

  @override
  Widget build(context) {
    // 访问更新后的计数变量
    return Scaffold(
        appBar: AppBar(
          title: const Text('Other Page'),
        ),
        body: Center(child: Text('Count: ${c.count}', style: const TextStyle(fontSize: 30),)));
  }

}