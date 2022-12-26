import '../constants/palette.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

Shimmer mainGreyShimmer(
  BuildContext context, {
  required Widget child,
}) {
  return Shimmer.fromColors(
      baseColor: AppPalette.mainGreyColor,
      highlightColor: AppPalette.whiteColor,
      child: child);
}
