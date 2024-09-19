import 'package:senior_code_app/core/extensions.dart';

import '../../../../../exports.dart';

class VerificationTexts extends StatelessWidget {
  const VerificationTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Verification Code",
            style: AppStyle.getSemiboldTextStyle(
              fontSize: 24,
              color: AppColors.black,
            ),
          ),
        ),
        8.vs,
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Please confirm the security code received on your\nregistered email.",
            style: AppStyle.getRegularTextStyle(
              fontSize: 12,
              color: AppColors.lightGrayColor,
            ),
          ),
        ),
      ],
    );
  }
}
