/// Copyright openuse.io © 2022
/// FileName box_text_widget
/// 
/// @Author simonyang81@gmail.com
/// @Date 2023/3/6 09:54
///
/// @Description
///
///

import 'package:flutter/material.dart';

class BoxTextWidget extends StatefulWidget {

  final String text;
  final BoxConstraints constraints;

  const BoxTextWidget({
    Key? key,
    required this.text,
    this.constraints = const BoxConstraints(
      minHeight: 40,
      maxHeight: 100,
      minWidth: 40,
      maxWidth: 300,
     ),
  }) : super(key: key);

  @override
  State<BoxTextWidget> createState() => _BoxTextWidgetState();
}

class _BoxTextWidgetState extends State<BoxTextWidget> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: widget.constraints,
      child: Container(
        color: Colors.blue,
        child: Text(widget.text,
          style: const TextStyle(fontSize: 16, color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),

    );
  }
}
