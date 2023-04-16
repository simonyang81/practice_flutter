import 'dart:async';
import 'package:flutter/material.dart';

class RemainingTime extends StatefulWidget {
  final int totalSeconds;
  final TextStyle textStyle;

  const RemainingTime({
    Key? key,
    required this.totalSeconds,
    required this.textStyle,
  }) : super(key: key);

  @override
  State<RemainingTime> createState() => _RemainingTimeState();
}

class _RemainingTimeState extends State<RemainingTime> {
  late Timer timer;
  int remainingSeconds = 0;

  @override
  void initState() {
    super.initState();
    remainingSeconds = widget.totalSeconds;
    timer = Timer.periodic(const Duration(seconds: 1), (Timer t) => updateTime());
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  void updateTime() {
    setState(() {
      remainingSeconds--;
    });
  }

  String getRemainingTime4Minutes() {
    int minutes = remainingSeconds ~/ 60;
    String minuteString = minutes.toString().padLeft(2, '0');
    return minuteString;
  }

  String getRemainingTime4Seconds() {
    int seconds = remainingSeconds % 60;
    String secondString = seconds.toString().padLeft(2, '0');
    return secondString;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: Text(
            getRemainingTime4Minutes(),
            style: widget.textStyle,
            textAlign: TextAlign.right,
          ),
        ),
        SizedBox(width: 10,child: Text(':', style: widget.textStyle, textAlign: TextAlign.center),),
        Expanded(
          flex: 1,
          child: Text(
            getRemainingTime4Seconds(),
            style: widget.textStyle,
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }
}

