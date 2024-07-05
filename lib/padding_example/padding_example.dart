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
      body: _buildContent(context)
    );
  }

  Widget _buildContent(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Stack(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: InkWell(
                  onTap: () {
                    debugPrint('Tap on green -->>');
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.green,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: InkWell(
                  onTap: () {
                    debugPrint('Tap on red -->>');
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
          // Row(
          //   mainAxisSize: MainAxisSize.max,
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Align(
          //       alignment: Alignment.centerLeft,
          //       child: Container(
          //         width: 100,
          //         height: 100,
          //         color: Colors.green,
          //       ),
          //     ),
          //     Container(
          //       alignment: Alignment.center,
          //       width: 100,
          //       height: 100,
          //       color: Colors.red,
          //     ),
          //   ]
          // ),


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
