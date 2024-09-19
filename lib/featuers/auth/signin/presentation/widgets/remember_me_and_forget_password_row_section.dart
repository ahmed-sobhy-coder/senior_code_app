import 'package:senior_code_app/core/extensions.dart';

import '../../../../../config/routes/app_routes.dart';
import '../../../../../exports.dart';
import 'check_box.dart';

class RememberMeAndForgetPasswordRowSection extends StatefulWidget {
  const RememberMeAndForgetPasswordRowSection({super.key});

  @override
  State<RememberMeAndForgetPasswordRowSection> createState() =>
      _RememberMeAndForgetPasswordRowSectionState();
}

class _RememberMeAndForgetPasswordRowSectionState
    extends State<RememberMeAndForgetPasswordRowSection> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.zero,
              child: AppCheckbox(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                value: isTapped,
                onChanged: (newChangedValue) {
                  setState(() {
                    isTapped = newChangedValue ?? false;
                  });
                },
                activeColor: Colors.blue,
                checkColor: Colors.white,
              ),
            ),
            11.hs,
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "Remember me",
                style: AppStyle.getMediumTextStyle(
                  fontSize: 12,
                  color: AppColors.white,
                ),
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Routes.resetPasswordRoute);
            },
            child: Text(
              "Forgot Password?",
              style: AppStyle.getSemiboldTextStyle(
                fontSize: 12,
                color: AppColors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
