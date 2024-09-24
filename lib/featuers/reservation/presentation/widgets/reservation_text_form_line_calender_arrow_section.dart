import 'package:senior_code_app/core/extensions.dart';

import '../../../../core/widgets/custome_svg_image.dart';
import '../../../../exports.dart';

class ReservationTextFormLineCalenderArrowSection extends StatelessWidget {
  const ReservationTextFormLineCalenderArrowSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.only(
            end: 9.w,
          ),
          child: const CustomSVGImage(
            color: AppColors.white,
            asset: AppAssets.verticalLineIcon,
            width: 27,
            height: 24,
          ),
        ),
        Icon(
          Icons.calendar_today_outlined,
          color: AppColors.white,
          size: 24.r,
        ),
        Padding(
          padding: EdgeInsetsDirectional.only(
            start: 9.w,
            end: 14.w,
          ),
          child: Icon(
            color: AppColors.white,
            Icons.keyboard_arrow_down_rounded,
            size: 26.r,
          ),
        ),
      ],
    );
  }
}
