import '../../exports.dart';
import '../size_utils.dart';

class AppStyles {
  AppStyles._();

  static final AppStyles _instance = AppStyles._();

  factory AppStyles() => _instance;

  static TextStyle getRegularStyle({
    double fontSize = 14,
    Color? color = AppColors.primaryColor,
    FontWeight? fontWeight = FontWeight.w400,
    String fontFamily = FontFamilies.interFamily,
    double? letterSpacing,
    FontStyle? fontStyle,
    double? height,
    double? wordSpacing,
    TextDecoration? decoration,
    TextDecorationStyle? decorationStyle,
    TextBaseline? textBaseline,
    Color? decorationColor,
    Color? backgroundColor,
  }) =>
      TextStyle(
        fontSize: getFontSize(fontSize),
        fontWeight: fontWeight,
        fontFamily: fontFamily,
        color: color,
        letterSpacing: letterSpacing,
        fontStyle: fontStyle,
        height: height,
        wordSpacing: wordSpacing,
        decoration: decoration,
        decorationStyle: decorationStyle,
        textBaseline: textBaseline,
        decorationColor: decorationColor,
        backgroundColor: backgroundColor,
      );

  static TextStyle getBoldStyle({
    double fontSize = 16,
    Color? color = AppColors.primaryColor,
    FontWeight? fontWeight = FontWeight.w700,
    String fontFamily = FontFamilies.interFamily,
    double? letterSpacing,
    FontStyle? fontStyle,
    double? height,
    double? wordSpacing,
    TextDecoration? decoration,
    TextDecorationStyle? decorationStyle,
    TextBaseline? textBaseline,
    Color? decorationColor,
    Color? backgroundColor,
  }) =>
      TextStyle(
        fontSize: getFontSize(fontSize),
        fontWeight: fontWeight,
        fontFamily: fontFamily,
        color: color,
        letterSpacing: letterSpacing,
        fontStyle: fontStyle,
        height: height,
        wordSpacing: wordSpacing,
        decoration: decoration,
        decorationStyle: decorationStyle,
        textBaseline: textBaseline,
        decorationColor: decorationColor,
        backgroundColor: backgroundColor,
      );

  static TextStyle getSemiBoldStyle({
    double fontSize = 12,
    Color? color = AppColors.primaryColor,
    FontWeight? fontWeight = FontWeight.w600,
    String fontFamily = FontFamilies.interFamily,
    double? letterSpacing,
    FontStyle? fontStyle,
    double? height,
    double? wordSpacing,
    TextDecoration? decoration,
    TextDecorationStyle? decorationStyle,
    TextBaseline? textBaseline,
    Color? decorationColor,
    Color? backgroundColor,
  }) =>
      TextStyle(
        fontSize: getFontSize(fontSize),
        fontWeight: fontWeight,
        fontFamily: fontFamily,
        color: color,
        letterSpacing: letterSpacing,
        fontStyle: fontStyle,
        height: height,
        wordSpacing: wordSpacing,
        decoration: decoration,
        decorationStyle: decorationStyle,
        textBaseline: textBaseline,
        decorationColor: decorationColor,
        backgroundColor: backgroundColor,
      );
  static TextStyle getMediumStyle({
    double fontSize = 13,
    Color? color = AppColors.primaryColor,
    FontWeight? fontWeight = FontWeight.w500,
    String fontFamily = FontFamilies.interFamily,
    double? letterSpacing,
    FontStyle? fontStyle,
    double? height,
    double? wordSpacing,
    TextDecoration? decoration,
    TextDecorationStyle? decorationStyle,
    TextBaseline? textBaseline,
    Color? decorationColor,
    Color? backgroundColor,
  }) =>
      TextStyle(
        fontSize: getFontSize(fontSize),
        fontWeight: fontWeight,
        fontFamily: fontFamily,
        color: color,
        letterSpacing: letterSpacing,
        fontStyle: fontStyle,
        height: height,
        wordSpacing: wordSpacing,
        decoration: decoration,
        decorationStyle: decorationStyle,
        textBaseline: textBaseline,
        decorationColor: decorationColor,
        backgroundColor: backgroundColor,
      );
}
