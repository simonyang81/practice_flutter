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
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: Colors.blue,
            width: double.infinity,
            height: 200,
            child: FractionallySizedBox(
              alignment: Alignment.centerRight,
              widthFactor: 0.2,
              heightFactor: 0.62,
              child: Container(
                color: Colors.red,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text('可以设置 widthFactor 和 heightFactor，占父组件的比例', style: TextStyle(fontSize: 18),),
          ),
          const Text('''
          核心代码:
          Container(
            color: Colors.blue,
            width: double.infinity,
            height: 200,
            child: FractionallySizedBox(
              alignment: Alignment.centerRight,
              widthFactor: 0.2,
              heightFactor: 0.62,
              child: Container(
                color: Colors.red,
              ),
            ),
          )
          ''', style: TextStyle(fontSize: 15),

          )

        ],
      ),
    );
  }

}
