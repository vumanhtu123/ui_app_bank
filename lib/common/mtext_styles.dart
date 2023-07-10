import 'dart:ui';

import 'package:flutter_superapp_tanzania/common/mcolor.dart';

class MTextStyle extends TextStyle {

  MTextStyle._({
    String? fontFamily,
    double? fontSize,
    double? height,
    MColor? color,
    FontWeight? fontWeight
  }) : super(
    fontFamily: fontFamily,
    fontSize: fontSize,
    height: height,
    color: color,
    fontWeight: fontWeight,
  );
  static const _fontFamily = 'Roboto';

  static var grayNormal =  MTextStyle._(
    fontFamily: _fontFamily,
    fontSize: 14,
    height: 1,
    color: MColor.gray2,
    fontWeight: FontWeight.w400,
  );

  static var graySmall = MTextStyle._(
    fontFamily: _fontFamily,
    fontSize: 12,
    height: 1,
    color: MColor.gray2,
    fontWeight: FontWeight.w400,
  );
}