/// FileName spinkit_example
/// 
/// @Author 杨雪松
/// @Email simonyang81@gmail.com
/// @Date 2023/3/21 18:17
///
/// @Description
///
///

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SpinkitExample extends StatefulWidget {
  const SpinkitExample({Key? key}) : super(key: key);

  @override
  State<SpinkitExample> createState() => _SpinkitExampleState();
}

class _SpinkitExampleState extends State<SpinkitExample> {

  static List<Widget> kits = <Widget>[
    // const SpinKitRotatingCircle(color: Colors.white),
    // const SpinKitRotatingPlain(color: Colors.white),
    // const SpinKitChasingDots(color: Colors.white),
    // const SpinKitPumpingHeart(color: Colors.white),
    // const SpinKitPulse(color: Color(0xFF7F57F2), size: 100.0,),
    // const SpinKitDoubleBounce(color: Colors.white),
    // const SpinKitWave(color: Colors.white, type: SpinKitWaveType.start),
    // const SpinKitWave(color: Colors.white, type: SpinKitWaveType.center),
    // const SpinKitWave(color: Colors.white, type: SpinKitWaveType.end),
    // const SpinKitPianoWave(color: Colors.white, type: SpinKitPianoWaveType.start),
    // const SpinKitPianoWave(color: Colors.white, type: SpinKitPianoWaveType.center),
    // const SpinKitPianoWave(color: Colors.white, type: SpinKitPianoWaveType.end),
    // const SpinKitThreeBounce(color: Colors.white),
    // const SpinKitThreeInOut(color: Colors.white),
    // const SpinKitWanderingCubes(color: Colors.white),
    // const SpinKitWanderingCubes(color: Colors.white, shape: BoxShape.circle),
    // const SpinKitCircle(color: Colors.white),
    // const SpinKitFadingFour(color: Colors.white),
    // const SpinKitFadingFour(color: Colors.white, shape: BoxShape.rectangle),
    // const SpinKitFadingCube(color: Colors.white),
    // const SpinKitCubeGrid(size: 51.0, color: Colors.white),
    // const SpinKitFoldingCube(color: Colors.white),
    // const SpinKitRing(color: Colors.white),
    // const SpinKitDualRing(color: Colors.white),
    // const SpinKitSpinningLines(color: Colors.white),
    // const SpinKitFadingGrid(color: Colors.white),
    // const SpinKitFadingGrid(color: Colors.white, shape: BoxShape.rectangle),
    // const SpinKitSquareCircle(color: Colors.white),
    // const SpinKitSpinningCircle(color: Colors.white),
    // const SpinKitSpinningCircle(color: Colors.white, shape: BoxShape.rectangle),
    // const SpinKitFadingCircle(color: Colors.white),
    // const SpinKitHourGlass(color: Colors.white),
    // const SpinKitPouringHourGlass(color: Colors.white),
    // const SpinKitPouringHourGlassRefined(color: Colors.white),
    const SpinKitRipple(color: Color(0xFF7F57F2), size: 600,),
    // Stack(children: [
    //   Center(
    //     child: Container(
    //       height: 10,
    //       width: 10,
    //       decoration: const BoxDecoration(
    //         color: Color(0xFF7F57F2),
    //         borderRadius: BorderRadius.all(Radius.circular(10)),
    //       ),
    //     ),
    //   ),
    //   const SpinKitRipple(color: Color(0xFF7F57F2), size: 200,),
    // ]),

    // Container(
    //   color: Color(0xFF7F57F2),
    //   child: const SpinKitRipple(color: Color(0xFF7F57F2), size: 200,)),
    // const SpinKitDancingSquare(color: Colors.white),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        elevation: 0.0,
        title: const Text('SpinKit', style: TextStyle(fontSize: 24.0)),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: context.adaptiveCrossAxisCount,
          mainAxisSpacing: 46,
          childAspectRatio: 2,
        ),
        padding: const EdgeInsets.only(top: 32, bottom: 64),
        itemCount: kits.length,
        itemBuilder: (context, index) => kits[index],
      ),
    );
  }

}

extension on BuildContext {
  int get adaptiveCrossAxisCount {
    final width = MediaQuery.of(this).size.width;
    if (width > 1024) {
      return 8;
    } else if (width > 720 && width < 1024) {
      return 6;
    } else if (width > 480) {
      return 4;
    } else if (width > 320) {
      return 3;
    }
    return 1;
  }
}
