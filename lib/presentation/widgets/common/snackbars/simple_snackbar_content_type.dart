import 'package:flutter/cupertino.dart';
import 'package:healsense/infastructure/core/constants/palette.dart';

class SimpleSnackbarContentType {
  final String message;
  final Color? color;

  SimpleSnackbarContentType(this.message, {this.color});

  static SimpleSnackbarContentType error =
      SimpleSnackbarContentType('error', color: AppPalette.redColor);
  static SimpleSnackbarContentType success =
      SimpleSnackbarContentType('success', color: AppPalette.greenColor);
}
