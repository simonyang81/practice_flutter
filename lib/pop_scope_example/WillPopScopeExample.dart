import 'package:flutter/material.dart';

/// FileName WillPopScopeExample
/// 
/// @Author 杨雪松
/// @Email simonyang81@gmail.com
/// @Date 2023/7/4 15:20
///
/// @Description
///
///

class WillPopScopeExample extends StatefulWidget {
  const WillPopScopeExample({super.key});

  @override
  State<WillPopScopeExample> createState() => _WillPopScopeExampleState();
}

class _WillPopScopeExampleState extends State<WillPopScopeExample> {

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        debugPrint('-->> onWillPop');
        return false;
      },
      child: const Scaffold(
        body: Center(
          child: Text('WillPopScopeExample'),
        ),
      ),
    );
  }

}
