import 'package:senior_code_app/core/extensions.dart';

import '../../../../../exports.dart';

class SigninLogoAndSigninIntroTextSection extends StatelessWidget {
  const SigninLogoAndSigninIntroTextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 68.h,
          width: 140.w,
          child: Image.asset(AppAssets().seniorCodeLogo),
        ),
        59.36.vs,
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Sign in to your\nAccount",
            style: AppStyle.getBoldTextStyle(
              fontSize: 32,
              color: AppColors.white,
            ),
          ),
        ),
        12.vs,
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Enter your email and password to log in",
            style: AppStyle.getMediumTextStyle(
              fontSize: 12,
              color: AppColors.white,
            ),
          ),
        ),
      ],
    );
  }
}
