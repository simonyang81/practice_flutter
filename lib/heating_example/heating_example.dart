/// FileName HeatingExample
/// 
/// @Author 杨雪松
/// @Email simonyang81@gmail.com
/// @Date 2023/4/18 17:51
///
/// @Description
///
///

import 'package:flutter/material.dart';
import 'dart:math';

class HeatingExample extends StatefulWidget {
  const HeatingExample({super.key});

  @override
  State<HeatingExample> createState() => _HeatingExampleState();
}

class _HeatingExampleState extends State<HeatingExample> with TickerProviderStateMixin {

  late AnimationController _animationController;
  late Animation<double> _animation;
  final TextEditingController _inputController = TextEditingController();
  double _targetAngle = 0;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1), // 设置动画的持续时间为1秒
    );
    _animation = Tween<double>(begin: 0.0, end: 0.0).animate(_animationController); // 初始化动画
  }

  @override
  void dispose() {
    _animationController.dispose();
    _inputController.dispose();
    super.dispose();
  }

  void _updateRotationAngle() {
    _targetAngle += double.parse(_inputController.text);
    _animation = Tween<double>(begin: _animation.value, end: _targetAngle).animate(_animationController); // 更新动画的结束值
    _animationController.reset(); // 重置动画
    _animationController.forward(); // 启动动画
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arrow Pointer Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                return Transform.rotate(
                  angle: _animation.value * pi / 180.0,
                  alignment: Alignment.bottomCenter,
                  child: const Icon(
                    Icons.arrow_upward,
                    size: 48.0,
                  ),
                );
              },
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: TextField(
                controller: _inputController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: '输入旋转角度',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                },
              ),
            ),
            TextButton(
              onPressed: () {
                _updateRotationAngle();
              },
              child: const Text('旋转', style: TextStyle(color: Colors.blue, fontSize: 20),),
            )
          ],
        ),
      ),
    );
  }
}

