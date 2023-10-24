
import 'package:flutter/material.dart';

import '../pages/utilities/colors.dart';
import '../pages/utilities/typhography.dart';

InputDecoration kInputDecoration = InputDecoration(
  contentPadding: const EdgeInsets.only(left: 16),
  hintStyle: TStyle.body1.copyWith(color: kColorNeutral5),
  prefixStyle: TStyle.body1,
  disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: kColorNeutral2)),
  focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: kColorPrimary1)),
  enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: kColorNeutral2)),
);

InputDecoration kInputDecoration2 = InputDecoration(
  contentPadding: const EdgeInsets.only(left: 16),
  hintStyle: TStyle.body1.copyWith(color: kColorNeutral5),
  prefixStyle: TStyle.body1,
  focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: kColorSecondary2)),
  enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: kColorNeutral2)),
);

InputDecoration kInputDecoration3 = InputDecoration(
  contentPadding: const EdgeInsets.only(),
  hintStyle: TStyle.captionRegular.copyWith(color: kColorNeutral5),
  prefixStyle: TStyle.body1,
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(color: kColorNeutral2),
  ),

  enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: kColorNeutral2)),
);


