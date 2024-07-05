/// FileName dialog_example
/// 
/// @Author 杨雪松
/// @Email simonyang81@gmail.com
/// @Date 2023/3/22 10:25
///
/// @Description
///
///

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_flutter/app_theme.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class DialogExample extends StatefulWidget {
  const DialogExample({Key? key}) : super(key: key);

  @override
  State<DialogExample> createState() => _DialogExampleState();
}

class _DialogExampleState extends State<DialogExample> {
  @override
  Widget build(BuildContext context) {
    return const MyHomePage(title: 'Flutter Demo Home Page');
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TimeOfDay? _time;
  int _selectedTime = 10;

  Future<void> _selectTime1(BuildContext context) async {

    showDialog(
      context: context,
      builder: (BuildContext context) {
        int _selectedTime = 5;
        return AlertDialog(
          title: Text('选择时间'),
          content: StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  RadioListTile(
                    title: Text('5分钟'),
                    value: 5,
                    groupValue: _selectedTime,
                    onChanged: (value) {
                      setState(() {
                        _selectedTime = value!;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text('10分钟'),
                    value: 10,
                    groupValue: _selectedTime,
                    onChanged: (value) {
                      setState(() {
                        _selectedTime = value!;
                      });
                    },
                  ),
                ],
              );
            },
          ),
          actions: <Widget>[
            TextButton(
              child: Text('确定'),
              onPressed: () {
                Navigator.of(context).pop(_selectedTime);
              },
            ),
          ],
        );
      },
    );

  }

  Future<void> _selectTime2(BuildContext context) async {
    final TimeOfDay? newTime = await showTimePicker(
      context: context,
      initialTime: _time ?? TimeOfDay.now(),
    );
    if (newTime != null) {
      setState(() {
        _time = newTime;
      });
    }
  }

  var alertStyle = AlertStyle(
    animationType: AnimationType.grow,
    isCloseButton: true,
    isOverlayTapDismiss: true,
    descStyle: TextStyle(fontWeight: FontWeight.bold),
    descTextAlign: TextAlign.start,
    animationDuration: Duration(milliseconds: 400),
    alertBorder: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(0.0),
      side: BorderSide(
        color: Colors.grey,
      ),
    ),
    titleStyle: TextStyle(
      color: Colors.red,
    ),
    alertAlignment: Alignment.center,
  );

  Future<void> _selectTime3(BuildContext context) async {
    Alert(
      context: context,
      style: alertStyle,
      type: AlertType.info,
      title: "RFLUTTER ALERT",
      // desc: "Flutter is more awesome with RFlutter Alert.",
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          RadioListTile(
            title: Text('5分钟'),
            value: 5,
            groupValue: _selectedTime,
            onChanged: (value) {
              debugPrint('select time: $value');
              setState(() {
                _selectedTime = value!;
              });
            },
          ),
          RadioListTile(
            title: Text('10分钟'),
            value: 10,
            groupValue: _selectedTime,
            onChanged: (value) {
              debugPrint('select time: $value');
              setState(() {
                _selectedTime = value!;
              });
            },
          ),
        ],
      ),
      buttons: [
        DialogButton(
          child: Text(
            "COOL",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          color: Color.fromRGBO(0, 179, 134, 1.0),
          radius: BorderRadius.circular(0.0),
        ),
      ],
    ).show();
  }

  void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Icon(CupertinoIcons.timer, color: AppTheme.app,),
                  title: Text('5分钟'),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  leading: Icon(Icons.timer),
                  title: Text('10分钟'),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  leading: Icon(Icons.timer),
                  title: Text('15分钟'),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  leading: Icon(Icons.timer),
                  title: Text('20分钟'),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  leading: Icon(Icons.timer),
                  title: Text('25分钟'),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  leading: Icon(Icons.timer),
                  title: Text('30分钟'),
                  onTap: () => Navigator.pop(context),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '你选择的时间是:',
            ),
            Text(
              _time == null ? '请选择时间' : _time!.format(context),
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // onPressed: () => _showModalBottomSheet(context),
        onPressed: () => _selectTime1(context),
        tooltip: '选择时间',
        child: Icon(Icons.access_time),
      ),
    );
  }
}
