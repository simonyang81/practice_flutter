/// Copyright openuse.io © 2022
/// FileName opu_onput_decoration
/// 
/// @Author simonyang81@gmail.com
/// @Date 2022/12/13 17:50
///
/// @Description
///
///

import 'package:flutter/material.dart';

import '../app_theme.dart';

class SMNInputDecoration extends InputDecoration {

  const SMNInputDecoration({
    labelText,
    errorText,
    errorStyle,
    errorMaxLines,
    suffixIcon,
    suffixIconConstraints,
    hintText,
    hintStyle,
    prefixIcon,
    prefixIconConstraints,
    prefixText,
    suffixText,
  }) : super(
    labelText: labelText,
    errorText: errorText,
    errorStyle: errorStyle,
    errorMaxLines: errorMaxLines,
    suffixIcon: suffixIcon,
    suffixIconConstraints: suffixIconConstraints,
    hintText: hintText,
    hintStyle: hintStyle,
    prefixIcon: prefixIcon,
    prefixIconConstraints: prefixIconConstraints,
    prefixText: prefixText,
    suffixText: suffixText,
    contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
    disabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.grey
      ),
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        color: AppTheme.app,
      ),
    ),
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.grey,
      ),
    ),
    errorBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        color: AppTheme.nearlyRed,
      ),
    ),
    focusedErrorBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        color: AppTheme.nearlyRed,
      ),
    ),
  );
}