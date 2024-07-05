import 'package:flutter/material.dart';

class DropdownButtonExample extends StatefulWidget {

  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String? _selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DropdownButton Demo'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Theme(
            data: ThemeData(
              popupMenuTheme: const PopupMenuThemeData(
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.blue, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                ),
              ),
            ),
            child: PopupMenuTheme(

              data: PopupMenuThemeData(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(color: Colors.red, width: 20),
                ),
              ),
              child: DropdownButton<String>(
                
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                // focusColor: Colors.red,
                // dropdownColor: Colors.blue,
                value: _selectedValue,
                hint: const Text("选择角色"),
                items: <String>['管理员', '普通用户']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),

                onChanged: (String? newValue) {
                  setState(() {
                    _selectedValue = newValue;
                  });
                },
              ),
            ),
          ),
        ),
      ),
    );
  }


}
