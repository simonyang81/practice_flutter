/// FileName text_field_example
/// 
/// @Author 杨雪松
/// @Email simonyang81@gmail.com
/// @Date 2023/3/20 17:52
///
/// @Description
///
///

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/smn_input_decoration.dart';

class TextFieldExample extends StatefulWidget {
  const TextFieldExample({Key? key}) : super(key: key);

  @override
  State<TextFieldExample> createState() => _TextFieldExampleState();
}

class _TextFieldExampleState extends State<TextFieldExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextFiled Example'),
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          debugPrint('on tap Center -->>');
          SystemChannels.textInput.invokeMethod('TextInput.hide');
        },
        child: Center(
          child: GestureDetector(
            onTap: () {
              debugPrint('on tap Padding -->>');
              SystemChannels.textInput.invokeMethod('TextInput.hide');
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GestureDetector(
                onTap: () {
                  debugPrint('on tap Column -->>');
                  SystemChannels.textInput.invokeMethod('TextInput.hide');
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    _buildText1(),
                    const SizedBox(height: 20,),
                    _buildText2(),


                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildText1() {
    return TextField(
      // controller: state.reNewPasswordCtrl,
      decoration: SMNInputDecoration(
          labelText: 'username',
          // errorText: state.confirmPasswordErrorText,
          // suffixIcon: IconButton(
          //     onPressed: () => logic.pressReNewPasswordSuffixIcon(),
          //     icon: Icon(state.isReNewPwdObscure ? CupertinoIcons.eye_slash : CupertinoIcons.eye,
          //       color: Colors.black54,)
          // )
      ),
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      maxLength: 10,
      maxLengthEnforcement: MaxLengthEnforcement.none,
      onSubmitted: (value) {
        debugPrint('value: $value');
      },

      // obscureText: state.isReNewPwdObscure,
      // onChanged: (value) => logic.passwordTextChange(),
      // onTap: () => logic.tapReNewPassword(),
    );
  }

  Widget _buildText2() {
    return TextField(
      // controller: state.reNewPasswordCtrl,
      decoration: SMNInputDecoration(
        labelText: 'password',
        // errorText: state.confirmPasswordErrorText,
        // suffixIcon: IconButton(
        //     onPressed: () => logic.pressReNewPasswordSuffixIcon(),
        //     icon: Icon(state.isReNewPwdObscure ? CupertinoIcons.eye_slash : CupertinoIcons.eye,
        //       color: Colors.black54,)
        // )
      ),
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.done,
      obscureText: true,
      onSubmitted: (value) {
        debugPrint('value: $value');
      },

      // obscureText: state.isReNewPwdObscure,
      // onChanged: (value) => logic.passwordTextChange(),
      // onTap: () => logic.tapReNewPassword(),
    );
  }

}
