import 'package:senior_code_app/core/extensions.dart';

import '../../../../../config/routes/app_routes.dart';
import '../../../../../exports.dart';

class DoNotHaveAcountRow extends StatelessWidget {
  const DoNotHaveAcountRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?",
          style: AppStyle.getMediumTextStyle(
            color: AppColors.white,
          ),
        ),
        6.hs,
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, Routes.signupRoute);
            // Routes.signupRoute.moveTo;
          },
          child: Text(
            "Sign up",
            style: AppStyle.getSemiboldTextStyle(
              fontSize: 16,
              color: AppColors.white,
            ),
          ),
        ),
        23.vs,
      ],
    );
  }
}
