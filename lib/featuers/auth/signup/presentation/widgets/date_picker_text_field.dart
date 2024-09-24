import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:senior_code_app/core/extensions.dart';

import '../../../../../core/utils/app_colors.dart';

class DatePickerTextField extends StatefulWidget {
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
  final Color pickedDateColor; // New parameter for picked date color

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
    this.pickedDateColor = Colors.black, // Default to black
  });

  @override
  _DatePickerTextFieldState createState() => _DatePickerTextFieldState();
}

class _DatePickerTextFieldState extends State<DatePickerTextField> {
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: _focusNode,
      controller: widget.controller,
      style: widget.inputStyle ??
          TextStyle(color: widget.pickedDateColor), // Use picked date color
      decoration: InputDecoration(
        isDense: true,
        contentPadding: widget.contentPadding ??
            EdgeInsets.symmetric(horizontal: 23.0.w, vertical: 16.0.h),
        focusedBorder: widget.focusedBorder ??
            OutlineInputBorder(
              borderRadius:
                  BorderRadius.circular(widget.radius?.toDouble() ?? 10.0.r),
              borderSide: BorderSide(color: Colors.white, width: 1.3.w),
            ),
        enabledBorder: OutlineInputBorder(
          borderRadius:
              BorderRadius.circular(widget.radius?.toDouble() ?? 10.0.r),
          borderSide: BorderSide(color: Colors.white, width: 1.3.w),
        ),
        hintStyle: widget.hintStyle ??
            TextStyle(
              color: _focusNode.hasFocus ? Colors.white : Colors.white,
            ),
        hintText: widget.hintText,
        suffixIcon: widget.suffixIcon,
        fillColor: widget.fillColor ?? Colors.transparent,
        filled: true,
        errorBorder: OutlineInputBorder(
          borderRadius:
              BorderRadius.circular(widget.radius?.toDouble() ?? 10.0.r),
          borderSide: BorderSide(color: Colors.red, width: 1.3.w),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius:
              BorderRadius.circular(widget.radius?.toDouble() ?? 10.0.r),
          borderSide: BorderSide(color: Colors.red, width: 1.3.w),
        ),
      ),
      readOnly: true,
      onTap: () async {
        DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: widget.initialDate ?? DateTime.now(),
          firstDate: DateTime(1950),
          lastDate: DateTime(2100),
          builder: (BuildContext context, Widget? child) {
            return Theme(
              data: Theme.of(context).copyWith(
                colorScheme: const ColorScheme.light(
                  primary: AppColors.thirdPrimaryColor, // Header background
                  onPrimary: AppColors.white, // Header text color
                  surface: AppColors.white, // Dialog background color
                  onSurface: AppColors.black, // Text color
                ),
                textButtonTheme: TextButtonThemeData(
                  style: TextButton.styleFrom(
                    foregroundColor: AppColors.black, // Button text color
                  ),
                ),
              ),
              child: child!,
            );
          },
        );

        if (pickedDate != null) {
          String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
          widget.controller.text = formattedDate; // Set output date
          widget.onDateSelected(pickedDate);
        }
      },
    );
  }
}
