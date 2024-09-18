import 'package:flutter/material.dart';

import '../size_utils.dart'; 
import 'app_fonts.dart'; 

class AppStyle {
  static TextStyle getBoldTextStyle({
    double fontSize = 14,
    Color? color,
    String? fontFamily = FontFamilies.cairoFamily,
    double? letterSpacing,
    FontStyle? fontStyle,
    double? wordSpacing,
    TextDecoration? decoration,
    TextDecorationStyle? textDecorationStyle,
    TextBaseline? textBaseline,
    Color? decorationColor,
    Color? backgroundColor,
    double? height,
    List<Shadow>? shadows,
  }) {
    return TextStyle(
      fontSize: getFontSize(fontSize),
      color: color,
      fontWeight: FontWeights.bold,
      fontFamily: fontFamily,
      letterSpacing: letterSpacing,
      fontStyle: fontStyle,
      decoration: decoration,
      decorationStyle: textDecorationStyle,
      decorationColor: decorationColor,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      backgroundColor: backgroundColor,
      height: height,
      shadows: shadows,
    );
  }

  // Other text style methods can be added here
  static TextStyle getRegularTextStyle({
    double fontSize = 14,
    Color? color,
    FontWeight? fontWeight,
    String fontFamily = FontFamilies.cairoFamily,
    double? letterSpacing,
    FontStyle? fontStyle,
    double? wordSpacing,
    TextDecoration? decoration,
    TextDecorationStyle? textDecorationStyle,
    TextBaseline? textBaseline,
    Color? decorationColor,
    Color? backgroundColor,
    double? height,
  }) {
    return TextStyle(
      fontSize: getFontSize(fontSize),
      color: color,
      fontWeight: FontWeight.w400,
      fontFamily: fontFamily,
      letterSpacing: letterSpacing,
      fontStyle: fontStyle,
      decoration: decoration,
      decorationStyle: textDecorationStyle,
      decorationColor: decorationColor,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      backgroundColor: backgroundColor,
      height: height,
    );
  }

  static TextStyle getMediumTextStyle({
    double fontSize = 16,
    Color? color,
    FontWeight? fontWeight,
    String? fontFamily = FontFamilies.cairoFamily,
    double? letterSpacing,
    FontStyle? fontStyle,
    double? wordSpacing,
    TextDecoration? decoration,
    TextDecorationStyle? textDecorationStyle,
    TextBaseline? textBaseline,
    Color? decorationColor,
    Color? backgroundColor,
    double? height,
  }) {
    return TextStyle(
      fontSize: getFontSize(fontSize),
      color: color,
      fontWeight: FontWeight.w500,
      fontFamily: fontFamily,
      letterSpacing: letterSpacing,
      fontStyle: fontStyle,
      decoration: decoration,
      decorationStyle: textDecorationStyle,
      decorationColor: decorationColor,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      backgroundColor: backgroundColor,
      height: height,
    );
  }

  static TextStyle getSemiboldTextStyle({
    double fontSize = 14,
    Color? color,
    FontWeight? fontWeight,
    String? fontFamily = FontFamilies.cairoFamily,
    double? letterSpacing,
    FontStyle? fontStyle,
    double? wordSpacing,
    TextDecoration? decoration,
    TextDecorationStyle? textDecorationStyle,
    TextBaseline? textBaseline,
    Color? decorationColor,
    Color? backgroundColor,
    double? height,
  }) {
    return TextStyle(
      fontSize: getFontSize(fontSize),
      color: color,
      fontWeight: FontWeights.semiBold,
      fontFamily: fontFamily,
      letterSpacing: letterSpacing,
      fontStyle: fontStyle,
      decoration: decoration,
      decorationStyle: textDecorationStyle,
      decorationColor: decorationColor,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      backgroundColor: backgroundColor,
      height: height,
    );
  }
}
