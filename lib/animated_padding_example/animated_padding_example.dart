/// Copyright openuse.io © 2022
/// FileName animated_padding_example
/// 
/// @Author simonyang81@gmail.com
/// @Date 2023/3/2 12:25
///
/// @Description
///
///

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedPaddingExample extends StatefulWidget {
  const AnimatedPaddingExample({Key? key}) : super(key: key);

  @override
  State<AnimatedPaddingExample> createState() => _AnimatedPaddingExampleState();
}

class _AnimatedPaddingExampleState extends State<AnimatedPaddingExample> {

  double _paddingValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedPaddingExample'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: _buildContent(),
    );
  }

  Widget _buildContent() {

    return Column(
      children: [
        const SizedBox(height: 30,),
        Text('Padding: $_paddingValue'),
        const SizedBox(height: 10,),
        AnimatedPadding(
          padding: EdgeInsets.all(_paddingValue),
          duration: const Duration(milliseconds: 1000),
          curve: Curves.easeInOut,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4,
            color: Colors.blue,
          ),
          onEnd: () {
            debugPrint('onEnd');
          },
        ),

        Padding(
          padding: const EdgeInsets.all(20.0),
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.blue,
              disabledBackgroundColor: Colors.blue.withOpacity(0.48),
              padding: const EdgeInsets.symmetric(vertical: 14),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(CupertinoIcons.arrow_right, color: Colors.white,),
                SizedBox(width: 10,),
                Text('改变padding的值', style: TextStyle(color: Colors.white, fontSize: 18),),
              ],
            ),
            onPressed: () {
              setState(() {
                _paddingValue = _paddingValue == 0.0 ? 50.0 : 0.0;
              });
            },
          ),
        )

      ],
    );

  }

}
