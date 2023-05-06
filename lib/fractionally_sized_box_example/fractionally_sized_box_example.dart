/// FileName fractionally_sized_box
/// 
/// @Author 杨雪松
/// @Email simonyang81@gmail.com
/// @Date 2023/5/4 11:14
///
/// @Description
/// 
/// 

import 'package:flutter/material.dart';

class FractionallySizedBoxExample extends StatefulWidget {
  const FractionallySizedBoxExample({Key? key}) : super(key: key);

  @override
  State<FractionallySizedBoxExample> createState() => _FractionallySizedBoxExampleState();
}

class _FractionallySizedBoxExampleState extends State<FractionallySizedBoxExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FractionallySizedBox Example'),
      ),
      body: _buildContent(),
    );
  }

  Widget _buildContent() {
    return Container(
      color: Colors.blue,
      width: double.infinity,
      height: 200,
      child: FractionallySizedBox(

        alignment: Alignment.center,
        widthFactor: 0.62,
        heightFactor: 0.9,
        child: Container(
          color: Colors.red,
        ),
      ),
    );
  }

}
