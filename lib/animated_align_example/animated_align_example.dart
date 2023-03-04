/// Copyright openuse.io © 2022
/// FileName animated_align_example
/// 
/// @Author simonyang81@gmail.com
/// @Date 2023/3/3 23:08
///
/// @Description
///
///

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedAlignExample extends StatefulWidget {
  const AnimatedAlignExample({Key? key}) : super(key: key);

  @override
  State<AnimatedAlignExample> createState() => _AnimatedAlignExampleState();
}

class _AnimatedAlignExampleState extends State<AnimatedAlignExample> {

  List allPosition = [Alignment.bottomLeft, Alignment.topLeft, Alignment.topRight, Alignment.bottomRight,];
  int snow = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Align Example'),
      ),
      body: _buildContent(context),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.red,
            child: AnimatedAlign(
                alignment: allPosition[snow],
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
                child: const Icon(CupertinoIcons.snow, size: 50, color: Colors.white),),
          ),
          const SizedBox(height: 20,),
          _buildButton(),
        ],
      ),
    );
  }

  Widget _buildButton() {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          snow = (snow + 1) % 4;
        });
      },
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Text('开始移动', style: TextStyle(color: Colors.white, fontSize: 18),),
      ),
    );
  }
}
