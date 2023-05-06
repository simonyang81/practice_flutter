/// FileName FittedBoxExample
/// 
/// @Author 杨雪松
/// @Email simonyang81@gmail.com
/// @Date 2023/5/3 20:05
///
/// @Description
///
///

import 'package:flutter/material.dart';

class FittedBoxExample extends StatefulWidget {
  const FittedBoxExample({Key? key}) : super(key: key);

  @override
  State<FittedBoxExample> createState() => _FittedBoxExampleState();
}

class _FittedBoxExampleState extends State<FittedBoxExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FittedBox Example'),
      ),
      body: _buildContent(),
    );
  }

  Widget _buildContent() {
    return Container(
      width: 250,
      height: 250,
      child: FittedBox(
        fit: BoxFit.cover,
        alignment: Alignment.topLeft,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Card(
          child: Image.network('http://placeimg.com/640/480/any'),
        ),
      ),
    );
  }

}
