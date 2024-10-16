/// Copyright openuse.io © 2022
/// FileName box_constraints_example
/// 
/// @Author simonyang81@gmail.com
/// @Date 2023/3/4 11:28
///
/// @Description
///
///

import 'package:flutter/material.dart';
import 'box_text_widget.dart';

class BoxConstraintsExample extends StatelessWidget {
  const BoxConstraintsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Box Constraints Example'),
        actions: [
          UnconstrainedBox(
            child: Container(
              color: Colors.pink,
              width: 20,
              height: 20,
              child: IconButton(
                onPressed: () {
                },
                icon: const Icon(Icons.alarm,),
                iconSize: 20,
                padding: EdgeInsets.zero,
              ),
            ),
          )
        ],
      ),
      body: _buildContent(context),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // const BoxTextWidget(
          //   text: 'Flutter 之 BoxConstraints',
          //   constraints: BoxConstraints.expand(height: 100),
          // ),
          // const SizedBox(height: 10),
          // BoxTextWidget(
          //   text: 'Flutter 之 BoxConstraints',
          //   constraints: BoxConstraints.loose(const Size(300, 100))
          // ),
          // const SizedBox(height: 10),
          BoxTextWidget(
            text: 'Flutter 之 BoxConstraints',
            constraints: BoxConstraints.tight(const Size(300, 100))
          ),
          const SizedBox(height: 10),
          const BoxTextWidget(
            text: 'Flutter 之 BoxConstraints',
            constraints: BoxConstraints.tightFor(width: double.infinity, height: 100),
          ),
          const SizedBox(height: 10),
          const BoxTextWidget(
            text: 'Flutter 之 BoxConstraints',
            constraints: BoxConstraints.tightForFinite(width: double.infinity, height: 100),
          ),
          // BoxTextWidget(
          //   text: 'Flutter 之 BoxConstraints',
          //   constraints: BoxConstraints.expand(width: 200, height: 100),
          // ),
          // SizedBox(height: 10),
          // BoxTextWidget(
          //   text: 'Flutter 之 BoxConstraints',
          //   constraints: BoxConstraints.expand(height: 100),
          // ),
        ],
      ),
    );
  }

}
