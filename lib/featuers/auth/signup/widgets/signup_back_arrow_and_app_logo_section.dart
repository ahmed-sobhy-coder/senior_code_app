import 'package:senior_code_app/core/extensions.dart';

import '../../../../core/widgets/senior_code_icon.dart';
import '../../../../exports.dart';

class SignupBackArrowAndAppLogoSection extends StatelessWidget {
  const SignupBackArrowAndAppLogoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            size: 17.5.r,
            Icons.arrow_back,
            color: AppColors.white,
          ),
        ),
        25.hs,
        const SeniorCodeIcon(),
      ],
    );
  }
}
