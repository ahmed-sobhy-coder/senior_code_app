import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:senior_code_app/core/extensions.dart';

import '../../../../../core/utils/app_colors.dart';

class OtpInputFieldSection extends StatelessWidget {
  final int? numberOfFields;
  final double? width; // width for each field
  final double? height; // height for each field
  final double? gap; // gap between fields
  final double? borderRadius;
  final BorderSide? border;
  final Color? backgroundColor;
  final double? opacity;
  final Color? borderColor;
  final Color? focusedBorderColor;
  final TextStyle? textStyle;
  final bool showFieldAsBox;
  final List<TextStyle?>? styles;
  final bool clearText;
  final Function(String)? onCodeChanged;
  final Function(String)? onSubmit;
  final Function(List<TextEditingController?>)? handleControllers;
  final double? borderWidth;

  const OtpInputFieldSection({
    super.key,
    this.numberOfFields,
    this.width,
    this.height, // Default height as per your values
    this.gap, // Default gap
    this.borderRadius,
    this.border,
    this.backgroundColor, // Default background color
    this.opacity, // Default opacity
    this.borderColor, // Default inactive border color
    this.focusedBorderColor, // Default focused border color
    this.textStyle, // Default text style
    this.showFieldAsBox = true, // Default to boxed fields
    this.styles, // Allow custom styles for individual fields
    this.clearText = false, // Default to not clearing text on focus
    this.onCodeChanged, // Function called when OTP changes
    this.onSubmit, // Function called when OTP is submitted
    this.handleControllers,
    this.borderWidth, // Function to access text controllers
  });

  @override
  Widget build(BuildContext context) {
    return OtpTextField(
      numberOfFields: numberOfFields ?? 6,
      borderColor: borderColor ?? AppColors.grey,
      focusedBorderColor: focusedBorderColor ?? AppColors.blueDark,
      clearText: clearText,
      showFieldAsBox: showFieldAsBox,
      textStyle: textStyle ?? Theme.of(context).textTheme.titleMedium,
      fieldWidth: width?.w ?? 42.5.w, // Apply the width for each field
      fieldHeight: height?.h ?? 54.w, // Apply the height for each field
      // fieldStyle: FieldStyle.box, // Apply box style 
      borderWidth: borderWidth?.w ?? 1.w, // Set the border width
      // styles: styles, // Custom styles for each field
      decoration: InputDecoration(
        filled: true,
        fillColor: backgroundColor ??
            Colors.white
                .withOpacity(opacity ?? 1), // Background color with opacity
        border: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              borderRadius?.r ?? 2.r,
            ), // Default border-radius as specified
          ), // Border radius
          // borderSide: BorderSide(
          //   color: borderColor??Color(0xFFDBDBDB) , // Default border color
          //   width: 1.0, // Default border width
          // ), // Border styling
        ),
      ),
      onCodeChanged: onCodeChanged ??
          (String value) {
            //! Default behavior if onCodeChanged
          },
      onSubmit: onSubmit ??
          (String code) {
            //! Default behavior if onSubmit
          },
      handleControllers: handleControllers ??
          (List<TextEditingController?> controllers) {
            //! Default behavior for accessing controllers
          },
    );
  }
}
