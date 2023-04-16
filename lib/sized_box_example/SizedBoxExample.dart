/// FileName SizedBoxExample
/// 
/// @Author 杨雪松
/// @Email simonyang81@gmail.com
/// @Date 2023/4/16 17:03
///
/// @Description
///
///

import 'package:flutter/material.dart';

class SizedBoxExample extends StatefulWidget {
  const SizedBoxExample({Key? key}) : super(key: key);

  @override
  State<SizedBoxExample> createState() => _SizedBoxExampleState();
}

class _SizedBoxExampleState extends State<SizedBoxExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SizedBoxExample'),
      ),
      body: SafeArea(child: _buildContent()),
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Container(

        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.red,
            width: 1.5,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),

          // color: Colors.red,

        ),
        child: Column(
          children: [

            Container(
              constraints: BoxConstraints(
                maxHeight: 300,
                maxWidth: 300,
              ),
              child: SizedBox.expand(
                child: Text('Hello SIMON 2'),
              ),
            ),

            SizedBox.fromSize(
              size: const Size(200, 200),
              child: const Text('Hello SIMON 3'),
            ),

            // SizedBox.shrink(
            //   child: Text('Hello SIMON 1'),
            // ),

          ],
        ),
      ),
    );
  }

}
