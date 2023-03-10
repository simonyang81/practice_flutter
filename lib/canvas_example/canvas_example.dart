/// FileName canvas_example
/// 
/// @Author 杨雪松
/// @Email simonyang81@gmail.com
/// @Date 2023/3/10 14:55
///
/// @Description
///
///

import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:flutter/services.dart';

class CanvasExample extends StatefulWidget {
  const CanvasExample({Key? key}) : super(key: key);

  @override
  State<CanvasExample> createState() => _CanvasExampleState();
}

class _CanvasExampleState extends State<CanvasExample> with TickerProviderStateMixin {

  late AnimationController _repeatAnimation;
  late Animation<double> _animation;

  ui.Image? _assetImage;

  @override
  void initState() {
    super.initState();
    _repeatAnimation = AnimationController(
        duration: const Duration(milliseconds: 3000),
        vsync: this)..repeat();
    _animation = Tween<double>(begin: 0, end: 1).animate(_repeatAnimation);
    _initImage();
  }

  _initImage() async {
    var image = await getAssetImage('assets/images/img.png');
    setState(() {
      _assetImage = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Canvas Example'),
      ),
      body: _buildContent(),
    );
  }

  Widget _buildContent() {

    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _assetImage != null ?
        Center(
          child: RotationTransition(
            turns: _animation,
            child: CustomPaint(
              foregroundPainter: MyCustomPainter(_assetImage!),
              size: const Size(100, 100),
            ),
          ),
        )
            : const SizedBox(),
      ],
    );

  }

  Future<ui.Image> getAssetImage(String asset) async {

    var data = await rootBundle.load(asset);
    var codec = await ui.instantiateImageCodec(data.buffer.asUint8List());
    var frameInfo = await codec.getNextFrame();

    return frameInfo.image;
  }

}

class MyCustomPainter extends CustomPainter {

  final ui.Image _imageFrame;

  MyCustomPainter(this._imageFrame);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
        ..color = Colors.blue
        ..style = PaintingStyle.fill
        ..isAntiAlias = true
        ..strokeCap = StrokeCap.butt
        ..strokeWidth = 30.0;

    canvas.drawImage(_imageFrame, const Offset(0, 0), paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;

}
