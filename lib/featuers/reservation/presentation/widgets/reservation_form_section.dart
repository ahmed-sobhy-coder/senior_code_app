import 'package:senior_code_app/core/extensions.dart';

import '../../../../core/utils/app_styels.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../../../core/widgets/down_arrow.dart';
import '../../../../core/widgets/text_form_field.dart';
import '../../../../exports.dart';
import '../../../auth/signup/presentation/widgets/date_picker_text_field.dart';
import 'reservation_text_form_line_calender_arrow_section.dart';

class ReservationFormSection extends StatefulWidget {
  const ReservationFormSection({super.key});

  @override
  State<ReservationFormSection> createState() => _ReservationFormSectionState();
}

class _ReservationFormSectionState extends State<ReservationFormSection> {
  final TextEditingController _dateController = TextEditingController();
  DateTime? _selectedDate;
  void _onDateSelected(DateTime date) {
    setState(() {
      _selectedDate = date; // Store the selected date
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextFormField(
          inputStyle: AppStyles.getBoldStyle(
            color: AppColors.white,
            fontSize: 14,
          ),
          focusdBorderColor: AppColors.white,
          suffixIcon: const DownArrow(),
          hintText: "Project Type",
          fillColor: AppColors.transparent,
          hintStyle: AppStyles.getBoldStyle(
            color: AppColors.white,
            fontSize: 14,
          ),
          radius: 10,
          contentPadding: EdgeInsetsDirectional.only(
            start: 24.w,
            top: 21.h,
            bottom: 21.h,
          ),
        ),
        31.vs,
        DatePickerTextField(
          contentPadding: EdgeInsetsDirectional.only(
            start: 24.w,
            top: 21.h,
            bottom: 21.h,
          ),
          pickedDateColor: AppColors.white, // The picked date color
          radius: 10,
          fillColor: AppColors.transparent,
          hintStyle: AppStyles.getBoldStyle(
            color: AppColors.white,
            fontSize: 14,
          ),
          controller: _dateController,
          initialDate: _selectedDate,
          onDateSelected: _onDateSelected,
          hintText: 'Date',
          suffixIcon: const ReservationTextFormLineCalenderArrowSection(),
        ),
        16.vs,
        AppTextFormField(
          inputStyle: AppStyles.getBoldStyle(
            color: AppColors.white,
            fontSize: 14,
          ),
          focusdBorderColor: AppColors.white,
          suffixIcon: const DownArrow(),
          hintText: "Time",
          fillColor: AppColors.transparent,
          hintStyle: AppStyles.getBoldStyle(
            color: AppColors.white,
            fontSize: 14,
          ),
          radius: 10,
          contentPadding: EdgeInsetsDirectional.only(
            start: 24.w,
            top: 21.h,
            bottom: 21.h,
          ),
        ),
        43.vs,
        AppTextButton(
          buttonHeight: 58.h,
          borderRadius: 10,
          backgroundColor: AppColors.white,
          buttonText: "Reserve",
          textStyle: AppStyles.getBoldStyle(
            color: AppColors.steelBlue,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
