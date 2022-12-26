import 'package:flutter/material.dart' show BuildContext, MediaQuery;

extension ResponsiveSizeExtension on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
}

extension ResponsiveViewInsetsExtension on BuildContext {
  double get viewInsetsBottom => MediaQuery.of(this).viewInsets.bottom;
}
