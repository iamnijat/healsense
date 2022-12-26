import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healsense/infastructure/core/constants/palette.dart';

extension TextFontWeightExtension on TextStyle {
  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);
  TextStyle get normal => copyWith(fontWeight: FontWeight.normal);
  TextStyle get w500 => copyWith(fontWeight: FontWeight.w500);
}

extension TextColorExtension on TextStyle {
  TextStyle get gray => copyWith(color: AppPalette.darkGrayColor);
  TextStyle get black => copyWith(color: AppPalette.blackColor);
  TextStyle get purple => copyWith(color: AppPalette.mainPurpleColor);
  TextStyle get orange => copyWith(color: AppPalette.darkOrangeColor);
  TextStyle get white => copyWith(color: AppPalette.whiteColor);
}

extension TextFontSizeExtension on TextStyle {
  TextStyle size(double size) => copyWith(fontSize: size.sp);
}

extension TextHeightExtension on TextStyle {
  TextStyle fontHeight(double size) => copyWith(height: size);
}

extension TextFontFamiltyExtension on TextStyle {
  TextStyle get montserrat => copyWith(fontFamily: "Montserrat");
}

extension TextOverflowExtension on TextStyle {
  TextStyle get ellipsis => copyWith(overflow: TextOverflow.ellipsis);
}
