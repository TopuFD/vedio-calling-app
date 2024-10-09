
import 'dart:ui';

import 'package:vedio_call/utils/color.dart';

class CustomTextStyle {
  static TextStyle? h1({
    Color? color,
    FontWeight? fontWeight,
    double? fontSize,
    double? letterSpacing,
  }) {
    return TextStyle(
      color: color ?? AppColor.blackColor,
      fontSize: fontSize ?? 25,
      letterSpacing: letterSpacing,
      fontWeight: fontWeight ?? FontWeight.bold,
    );
  }
}
