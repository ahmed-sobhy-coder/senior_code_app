// import 'package:flutter/material.dart';
// import 'package:senior_code_app/core/extensions.dart';


// import '../../core/size_utils.dart';
// import '../../core/utils/app_colors.dart';
// import '../../core/utils/app_fonts.dart';
// import '../../core/utils/app_styels.dart';

// ThemeData appTheme() {
//   return ThemeData(
//     appBarTheme: const AppBarTheme(
//       backgroundColor: null,
//       iconTheme: IconThemeData(color: AppColors.primaryColor),
//     ),
//     colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
//     textTheme: getTextTheme(),
//     inputDecorationTheme: InputDecorationTheme(
//       contentPadding: getPadding(horizontal: 16.w, vertical: 0),
//       hintStyle: AppStyles.getMediumStyle(
//         color: AppColors.hintColor,
//         fontSize: getFontSize(14),
//         height: getFontSize(26.24) / getFontSize(14),
//       ),
//       border: const OutlineInputBorder(
//         borderRadius: BorderRadius.all(Radius.circular(8)),
//         borderSide: BorderSide(color: AppColors.borderColor, width: 1),
//       ),
//     ),
//   );
// }

// TextTheme? getTextTheme() {
//   const textTheme = TextTheme(
//     titleLarge: TextStyle(
//       fontSize: 22,
//       fontWeight: FontWeight.bold,
//       color: AppColors.deepGray,
//       fontFamily: FontFamilies.cairoFamily,
//     ),
//     titleMedium: TextStyle(
//       fontSize: 16,
//       fontWeight: FontWeight.bold,
//       color: AppColors.deepGray,
//       fontFamily: FontFamilies.cairoFamily,
//     ),
//     titleSmall: TextStyle(
//       fontSize: 14,
//       fontWeight: FontWeight.bold,
//       color: AppColors.deepGray,
//       fontFamily: FontFamilies.cairoFamily,
//     ),
//     bodyLarge: TextStyle(
//       fontSize: 22,
//       color: AppColors.deepGray,
//       fontFamily: FontFamilies.cairoFamily,
//     ),
//     bodyMedium: TextStyle(
//       fontSize: 16,
//       color: AppColors.deepGray,
//       fontFamily: FontFamilies.cairoFamily,
//     ),
//     bodySmall: TextStyle(
//       fontSize: 14,
//       color: AppColors.deepGray,
//       fontFamily: FontFamilies.cairoFamily,
//     ),
//   );
//   return textTheme;
// }
