import 'package:senior_code_app/core/extensions.dart';

import '../../../../../core/utils/app_styels.dart';
import '../../../../../core/widgets/senior_code_app_bar.dart';
import '../../../../../exports.dart';

class VerificationAppBarAndImageAndTimer extends StatelessWidget {
  const VerificationAppBarAndImageAndTimer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SeniorCodeAppBar(
              backArrowIconColor: AppColors.black,
              height: 16,
              width: 16,
            ),
          ],
        ),
        48.vs,
        SizedBox(
          width: 219.w,
          height: 219.h,
          child: Image.asset(
            AppAssets.verificationCharacterImage,
          ),
        ),
        23.vs,
        Text(
          "00:59",
          style: AppStyles.getSemiBoldStyle(
            fontSize: 16,
            color: AppColors.lighterBlueColor,
          ),
        ),
      ],
    );
  }
}
