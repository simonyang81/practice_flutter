import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'counter_logic.dart';

class CounterPage extends StatelessWidget {

  CounterPage({super.key});

  final logic = Get.put(CounterPageLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Page'),
      ),
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: logic.increment,
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildBody() {
    return Center(
        child: Column(
          children: [
            Obx(() {
              return Text('User name: ${logic.user.value.name}', style: const TextStyle(fontSize: 30),);
            }),
            GetBuilder<CounterPageLogic>(
              id: 'counter',
              assignId: true,
              builder: (logic) {
                return Text('Counter: ${logic.counter.value}', style: const TextStyle(fontSize: 30),);
              },
            ),
          ],
        )
    );
  }


}
