/// Copyright openuse.io © 2022
/// FileName padding_example
/// 
/// @Author simonyang81@gmail.com
/// @Date 2023/3/2 09:55
///
/// @Description
///
///

import 'package:flutter/material.dart';

class PaddingExample extends StatelessWidget {
  const PaddingExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Padding Example'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: _buildContent()
    );
  }

  Widget _buildContent() {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.green,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.orange,
          )
      ],),
    );
  }

}
