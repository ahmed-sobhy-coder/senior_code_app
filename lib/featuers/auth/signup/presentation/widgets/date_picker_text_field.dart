import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:senior_code_app/core/extensions.dart';

import '../../../../../core/utils/app_colors.dart';

class DatePickerTextField extends StatelessWidget {
  final TextEditingController controller;
  final DateTime? initialDate;
  final Function(DateTime) onDateSelected;
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final TextStyle? inputStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final Widget? suffixIcon;
  final Color? fillColor;
  final int? radius;

  const DatePickerTextField({
    super.key,
    required this.controller,
    this.initialDate,
    required this.onDateSelected,
    this.contentPadding,
    this.focusedBorder,
    this.inputStyle,
    this.hintStyle,
    required this.hintText,
    this.suffixIcon,
    this.fillColor,
    this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 23.0.w, vertical: 16.0.h),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius?.toDouble() ?? 10.0.r),
              borderSide:
                  BorderSide(color: Theme.of(context).primaryColor, width: 1.w),
            ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius?.toDouble() ?? 10.0.r),
          borderSide: BorderSide(color: Colors.grey, width: 1.0.w),
        ),
        hintStyle: hintStyle ??
            const TextStyle(
              color: Colors.black,
            ),
        hintText: hintText,
        suffixIcon: suffixIcon,
        fillColor: fillColor ?? Colors.white,
        filled: true,
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius?.toDouble() ?? 10.0.r),
          borderSide: BorderSide(color: Colors.red, width: 1.0.w),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius?.toDouble() ?? 10.0.r),
          borderSide: BorderSide(color: Colors.red, width: 1.0.w),
        ),
      ),
      readOnly: true,
      onTap: () async {
        DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: initialDate ?? DateTime.now(),
          firstDate: DateTime(1950),
          lastDate: DateTime(2100),
          builder: (BuildContext context, Widget? child) {
            return Theme(
              data: Theme.of(context).copyWith(
                colorScheme: const ColorScheme.light(
                  primary: AppColors
                      .thirdPrimaryColor, // Header and selected day background color
                  onPrimary: AppColors.white, // Background color of the picker
                  surface: AppColors.white, // Surface color
                  onSurface: AppColors.black, // Month days, years
                ),
                textButtonTheme: TextButtonThemeData(
                  style: TextButton.styleFrom(
                    foregroundColor: AppColors.black, // OK, Cancel buttons
                  ),
                ),
              ),
              child: child!,
            );
          },
        );

        if (pickedDate != null) {
          String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
          controller.text = formattedDate; // Set output date to TextField value
          onDateSelected(
            pickedDate,
          ); // Call the callback function with the selected date
        }
      },
    );
  }
}
