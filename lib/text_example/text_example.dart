/// Copyright openuse.io © 2022
/// FileName text_example
/// 
/// @Author simonyang81@gmail.com
/// @Date 2023/3/5 10:03
///
/// @Description
///
///

import 'package:flutter/material.dart';

class TextExample extends StatelessWidget {
  const TextExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '这是一个 Text 组件，这是一个 Text 组件，这是一个 Text 组件',
              style: TextStyle(
                inherit: false,
                // color: Colors.red,
                // foreground:
                //   Paint()..color = Colors.white
                // ,
                // backgroundColor: Colors.green,
                background: Paint()..color = Colors.green,
                fontSize: 30,
                // fontWeight: FontWeight.w800,
                // letterSpacing: 4,
                // wordSpacing: 50,
                // fontStyle: FontStyle.italic,
                textBaseline: TextBaseline.alphabetic,
                height: 4,
                shadows: const [
                  BoxShadow(
                    color: Colors.black45,  // 阴影的颜色
                    offset: Offset(10, 10), // 偏移量
                    spreadRadius: 5.0 // 模糊度
                  )
                ],
                decoration: TextDecoration.underline,
                decorationColor: Colors.black,
                decorationStyle: TextDecorationStyle.wavy,
                decorationThickness: 1,
              ),
              textAlign: TextAlign.center,
              maxLines: 1,
              // overflow: TextOverflow.ellipsis,
              // softWrap: false,
            ),
          ],
        ),
      ),
    );
  }
}
