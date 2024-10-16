import 'package:flutter/material.dart';

import '../widgets/remaining_time.dart';

/// FileName RemainingTimeExample
/// 
/// @Author 杨雪松
/// @Email simonyang81@gmail.com
/// @Date 2023/3/31 14:37
///
/// @Description
///
///


class RemainingTimeExample extends StatelessWidget {
  const RemainingTimeExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Remaining Time'),
      ),


      body: const Center(
        child: RemainingTime(
          totalSeconds: 1200,
          textStyle: TextStyle(color: Colors.black, fontSize: 30),
        ),
      ),

    );
  }
}
