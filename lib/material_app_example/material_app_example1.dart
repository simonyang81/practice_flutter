/// Copyright openuse.io © 2022
/// FileName material_example_1
/// 
/// @Author simonyang81@gmail.com
/// @Date 2023/2/18 16:14
///
/// @Description
///
///

import 'package:f_logs/f_logs.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

import '../internationalization/messages.dart';

class MaterialAppExample1 extends StatefulWidget {
  const MaterialAppExample1({Key? key}) : super(key: key);

  @override
  State<MaterialAppExample1> createState() => _MaterialAppExample1State();
}

class _MaterialAppExample1State extends State<MaterialAppExample1> {

  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey();
  final GlobalKey<ScaffoldMessengerState> _scaffoldMessengerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {

    MediaQueryData mediaQueryData = MediaQuery.of(context);

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: _navigatorKey,
      scaffoldMessengerKey: _scaffoldMessengerKey,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      darkTheme: ThemeData(
        primarySwatch: Colors.green,
        brightness: Brightness.light,
        colorScheme: const ColorScheme.light(
          primary: Colors.green,
          secondary: Colors.red,
        )
      ),
      themeMode: ThemeMode.dark,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Example 1'),

        ),
        body: const Center(
          child: Text('MaterialApp'),
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     // showDialog(context: Get.context!, builder: (context) => const AlertDialog(title: Text('Alert'),),);
        //     // showDialog(context: _navigatorKey.currentState!.context, builder: (context) => const AlertDialog(title: Text('Alert'),),);
        //
        //     // _scaffoldMessengerKey.currentState!.showSnackBar(const SnackBar(content: Text('SnackBar')));
        //
        //     // Navigator.of(_navigatorKey.currentState!.context).pushNamed('/C');
        //
        //     Navigator.of(_navigatorKey.currentState!.context).push(
        //       MaterialPageRoute(builder: (context) {
        //         return const A();
        //       },
        //       settings: const RouteSettings(name: '/A', arguments: {
        //         'name': 'SIMON Y',
        //       })
        //     ));
        //
        //   },
        //   child: const Icon(Icons.add_alert, color: Colors.white),
        // ),

        persistentFooterButtons: [
          TextButton(onPressed: () {  }, child: const Text('Button 1'),),
          TextButton(onPressed: () {  }, child: const Text('Button 2'),),
          TextButton(onPressed: () {  }, child: const Text('Button 3'),)
        ],

         // extendBody: false,
        // extendBody: true,
        // drawerDragStartBehavior: DragStartBehavior.down,

      ),

      locale: Get.deviceLocale,
      translations: Messages(),
      fallbackLocale: const Locale('en', 'US'),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('zh', 'CN'), Locale('en', 'US')],

      // showPerformanceOverlay: true,
      // showSemanticsDebugger: true,
      // locale: const Locale('zh', 'CN'), // 简体中文
      // localizationsDelegates: const [
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalMaterialLocalizations.delegate,
      // ],
      // supportedLocales: const [
      //   Locale('zh', 'CN'),
      //   Locale('en', 'US'),
      // ],
      // routes: {
      //   '/A': (context) => const A(),
      //   '/B': (context) => const B(),
      // },
      //
      // navigatorObservers: [
      //   MyObserver(),
      // ],
      //
      //
      // onGenerateRoute: (settings) {
      //   return MaterialPageRoute(builder: (context) => const ErrorPage(),);
      // },

    );
  }
}

class MyObserver extends NavigatorObserver {

  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);
    FLog.info(text: 'didPush');
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);
    FLog.info(text: 'didPop');
  }
}

class A extends StatelessWidget {
  const A({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Object? args = ModalRoute.of(context)?.settings.arguments;
    var name = (args as Map)['name'];

    return Scaffold(
      appBar: AppBar(
        title: Text('title'.tr),
      ),
      body: Center(
        child: Text(name),
      ),
    );
  }
}

class B extends StatelessWidget {
  const B({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('B'),
      ),
      body: const Center(
        child: Text('B'),
      ),
    );
  }
}

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error'),
      ),
      body: const Center(
        child: Text('Error Page'),
      ),
    );
  }
}



