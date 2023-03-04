/// Copyright openuse.io © 2022
/// FileName button_example
/// 
/// @Author simonyang81@gmail.com
/// @Date 2023/3/4 10:04
///
/// @Description
///
///

import 'package:flutter/material.dart';

class ButtonExample extends StatefulWidget {
  const ButtonExample({Key? key}) : super(key: key);

  @override
  State<ButtonExample> createState() => _ButtonExampleState();
}

class _ButtonExampleState extends State<ButtonExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Example'),
      ),
      body: _buildContent(context),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {  },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text('Elevated Button', style: TextStyle(color: Colors.white, fontSize: 20),),
            ),
          ),
          const SizedBox(height: 10,),
          FilledButton(
            onPressed: () {  },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text('Filled Button', style: TextStyle(color: Colors.white, fontSize: 20),),
            ),
          ),
          const SizedBox(height: 10,),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.blue,
              disabledBackgroundColor: Colors.blue.withOpacity(0.48),
              padding: const EdgeInsets.symmetric(vertical: 14),
            ),
            onPressed: () {  },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text('Outlined Button', style: TextStyle(color: Colors.white, fontSize: 20),),
            ),
          ),
          const SizedBox(height: 10,),
          TextButton(
            onPressed: () {
            },
            child: const Text('Text Button', style: TextStyle(color: Colors.blue, fontSize: 20),),
          )
        ]
      ),
    );

  }

}
