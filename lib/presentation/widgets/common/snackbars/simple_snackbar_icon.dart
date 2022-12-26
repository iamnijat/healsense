import 'package:flutter/material.dart';
import 'package:healsense/infastructure/core/constants/palette.dart';

import 'simple_snackbar_content_type.dart';

class SimpleSnackbarIcon {
  static Icon icon(SimpleSnackbarContentType contentType,
      {required double size}) {
    if (contentType == SimpleSnackbarContentType.success) {
      return Icon(
        Icons.done,
        size: size,
        color: AppPalette.whiteColor,
      );
    } else if (contentType == SimpleSnackbarContentType.error) {
      return Icon(
        Icons.close_outlined,
        size: size,
        color: AppPalette.whiteColor,
      );
    } else {
      return Icon(
        Icons.close_outlined,
        size: size,
        color: AppPalette.whiteColor,
      );
    }
  }
}
