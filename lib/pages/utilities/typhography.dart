
import 'package:flutter/material.dart';

import 'colors.dart';

extension FigmaDimention on double {
  double toFigmaHeight(double fontSize) {
    return this / fontSize;
  }
}

class TStyle {
  static TextStyle captionLight = TextStyle(
      fontWeight: FontWeight.w300, fontSize: 12, color: kColorNeutral10,height: 17.0.toFigmaHeight(12));
  static TextStyle captionRegular = TextStyle(
      fontWeight: FontWeight.w400, fontSize: 12, color: kColorNeutral10,height: 17.0.toFigmaHeight(12));
  static TextStyle captionMedium = TextStyle(
      fontWeight: FontWeight.w500, fontSize: 12, color: kColorNeutral10,height: 17.0.toFigmaHeight(12));
  static TextStyle captionSemiBold = TextStyle(
      fontWeight: FontWeight.w600, fontSize: 12, color: kColorNeutral10,height: 17.0.toFigmaHeight(12));

  static TextStyle body1 = TextStyle(
      fontWeight: FontWeight.w400, fontSize: 14, color: kColorNeutral10, height: 20.0.toFigmaHeight(14));
  static TextStyle body2 = TextStyle(
      fontWeight: FontWeight.w500, fontSize: 14, color: kColorNeutral10, height: 20.0.toFigmaHeight(14));

  static TextStyle title = TextStyle(
      fontWeight: FontWeight.w600, fontSize: 16, color: kColorNeutral10, height: 22.0.toFigmaHeight(16));
  static TextStyle header1 = TextStyle(
      fontWeight: FontWeight.w700, fontSize: 20, color: kColorNeutral10, height: 28.0.toFigmaHeight(20));
  static TextStyle header2 = TextStyle(
      fontWeight: FontWeight.w700, fontSize: 24, color: kColorNeutral10, height: 34.0.toFigmaHeight(24));
  static TextStyle header3 = TextStyle(
      fontWeight: FontWeight.w700, fontSize: 30, color: kColorNeutral10, height: 42.0.toFigmaHeight(30));
}
