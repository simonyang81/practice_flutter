/// FileName uni_links_example
/// 
/// @Author 杨雪松
/// @Email simonyang81@gmail.com
/// @Date 2023/5/10 11:32
///
/// @Description
///
///

import 'package:flutter/material.dart';

class UniLinksExample extends StatefulWidget {
  const UniLinksExample({Key? key}) : super(key: key);

  @override
  State<UniLinksExample> createState() => _UniLinksExampleState();
}

class _UniLinksExampleState extends State<UniLinksExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UniLinksExample'),
      ),
      body: _buildContent(context),
    );
  }


  Widget _buildContent(BuildContext context) {
    return const Center(
      child: Text('UniLinksExample'),
    );
  }

}
