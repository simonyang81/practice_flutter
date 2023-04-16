/// FileName ble_example
/// 
/// @Author 杨雪松
/// @Email simonyang81@gmail.com
/// @Date 2023/3/28 18:07
///
/// @Description
///
///

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

class BleExample extends StatefulWidget {
  const BleExample({Key? key}) : super(key: key);

  @override
  State<BleExample> createState() => _BleExampleState();
}

class _BleExampleState extends State<BleExample> {

  FlutterBluePlus flutterBlue = FlutterBluePlus.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ble Example'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

          flutterBlue.startScan(timeout: const Duration(seconds: 100));

          // Listen to scan results
          var subscription = flutterBlue.scanResults.listen((results) {
            // do something with scan results
            for (ScanResult r in results) {
              if (r.device.name.isEmpty) {
                continue;
              }
              debugPrint('${r.device} found! local name: ${r.advertisementData.localName}');
            }
          });



        },
        // onPressed: () => _selectTime1(context),
        tooltip: '扫描蓝牙',
        child: const Icon(Icons.scanner),
      ),
    );
  }
}
