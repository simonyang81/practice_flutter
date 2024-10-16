/// FileName record_example
/// 
/// @Author 杨雪松
/// @Email simonyang81@gmail.com
/// @Date 2023/5/11 15:10
///
/// @Description
///
///

import 'package:flutter/material.dart';

class RecordExample extends StatefulWidget {
  const RecordExample({super.key});

  @override
  State<RecordExample> createState() => _RecordExampleState();
}

class _RecordExampleState extends State<RecordExample> {
  @override
  Widget build(BuildContext context) {
    var names = getNames();
    return WillPopScope(
      onWillPop: () async {
        debugPrint('-->> onWillPop');
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Record Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('name: ${names.name}', style: const TextStyle(fontSize: 20),),
              Text('age: ${names.age}', style: const TextStyle(fontSize: 20),),
            ],
          ),
        ),
      ),
    );
  }

  (String, int, {String name, int age}) getNames() {
    return (name: 'Simon', age: 42, 'XXX', 12);
  }

}




