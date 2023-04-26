/// FileName hook_example
/// 
/// @Author 杨雪松
/// @Email simonyang81@gmail.com
/// @Date 2023/4/26 16:03
///
/// @Description
///
///

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HookExample extends HookWidget {
  const HookExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final counter = useState(0);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Hook Example'),
      ),
      body: Center(
        child: Text(
          'You have pushed the button this many times: ${counter.value}',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => counter.value++,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

