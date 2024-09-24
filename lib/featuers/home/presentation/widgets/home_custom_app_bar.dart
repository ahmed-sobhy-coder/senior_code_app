import 'package:senior_code_app/core/extensions.dart';

import '../../../../core/utils/app_styels.dart';
import '../../../../core/widgets/senior_code_app_bar.dart';
import '../../../../exports.dart';

class HomeCustomAppBar extends StatelessWidget {
  const HomeCustomAppBar(
      {super.key,
      this.homeCustomAppBarHorizontalPadding,
      this.homeCustomSeniorCodeAppBarArrowHeight,
      this.homeCustomSeniorCodeAppBarArrowWidth,
      required this.homeCustomAppBarTextData,
      this.homeCustomAppBarTextDataStyle});
  final double? homeCustomAppBarHorizontalPadding;
  final double? homeCustomSeniorCodeAppBarArrowHeight;
  final double? homeCustomSeniorCodeAppBarArrowWidth;
  final String homeCustomAppBarTextData;
  final TextStyle? homeCustomAppBarTextDataStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: homeCustomAppBarHorizontalPadding?.w ?? 22.w),
      child: Row(
        children: [
          SeniorCodeAppBarArrow(
            height: homeCustomSeniorCodeAppBarArrowHeight ?? 15.62,
            width: homeCustomSeniorCodeAppBarArrowWidth ?? 18.11,
          ),
          const Spacer(), // Added flexible space between app bar and text
          Text(
            homeCustomAppBarTextData,
            style: homeCustomAppBarTextDataStyle ??
                AppStyles.getSemiBoldStyle(
                  fontFamily: FontFamilies.poppinsFamily,
                  fontSize: 24,
                  color: AppColors.white,
                ),
          ),
          const Spacer(), // Added flexible space to keep the text centered
        ],
      ),
    );
  }
}
