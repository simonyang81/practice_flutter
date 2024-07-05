import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'share_csv_file_example_logic.dart';

class ShareCsvFileExamplePage extends StatefulWidget {
  const ShareCsvFileExamplePage({super.key});

  @override
  State<ShareCsvFileExamplePage> createState() => _ShareCsvFileExamplePageState();
}

class _ShareCsvFileExamplePageState extends State<ShareCsvFileExamplePage> {
  final logic = Get.put(ShareCsvFileExampleLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ShareCsvFileExamplePage'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                logic.shareCsvFile();
              },
              child: const Text('分享CSV文件'),
            ),

            const SizedBox(height: 20),

            TextButton(
              onPressed: () {
                logic.shareCsvFile();
              },
              child: const Text('分享Excel文件'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    Get.delete<ShareCsvFileExampleLogic>();
    super.dispose();
  }
}