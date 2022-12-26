import 'package:flutter/material.dart' show TextStyle;
import 'package:healsense/infastructure/core/extensions/text_style_extensions.dart';

class TextStyles {
  const TextStyles._();

  static final white14w500Montserrat =
      const TextStyle().white.w500.montserrat.size(14);

  static final white14BoldMontserrat =
      const TextStyle().white.bold.montserrat.size(14);

  static final white16BoldMontserrat =
      const TextStyle().white.bold.montserrat.size(16);

  static final black16BoldMontserrat =
      const TextStyle().black.bold.montserrat.size(16);

  static final gray14w500Montserrat =
      const TextStyle().gray.w500.montserrat.size(14);

  static final gray14w500MontserratEllipsis =
      const TextStyle().gray.w500.montserrat.ellipsis.size(14);

  static final black14w500Montserrat =
      const TextStyle().black.w500.montserrat.size(14);

  static final black14BoldMontserrat =
      const TextStyle().black.bold.montserrat.size(14);

  static final black15BoldMontserrat =
      const TextStyle().black.bold.montserrat.size(15);

  static final black20BoldMontserrat =
      const TextStyle().black.bold.montserrat.size(20);

  static final black22BoldLineHeightMontserrat =
      const TextStyle().black.bold.montserrat.size(22).fontHeight(1.5);

  static final black16w500LineHeightMontserrat =
      const TextStyle().black.w500.montserrat.size(16).fontHeight(1.5);

  static final black15BoldLineHeightMontserratEllipsis =
      const TextStyle().black.bold.montserrat.ellipsis.size(15).fontHeight(1.5);

  static final black26BoldLineHeightMontserrat =
      const TextStyle().black.bold.montserrat.size(26).fontHeight(1.5);

  static final purple14BoldMontserrat =
      const TextStyle().purple.bold.montserrat.size(14);

  static final purple14BoldMontserratEllipsisLineHeight = const TextStyle()
      .purple
      .bold
      .montserrat
      .ellipsis
      .size(14)
      .fontHeight(1.5);

  static final orange14BoldMontserratEllipsisLineHeight = const TextStyle()
      .orange
      .bold
      .montserrat
      .ellipsis
      .size(14)
      .fontHeight(1.5);

  static final purple20BoldMontserrat =
      const TextStyle().purple.bold.montserrat.size(20);

  static final orange14BoldMontserrat =
      const TextStyle().orange.bold.montserrat.size(14).ellipsis;
}
