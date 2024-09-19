import 'package:senior_code_app/core/extensions.dart';

import '../../../../../core/widgets/senior_code_app_bar.dart';
import '../../../../../core/widgets/senior_code_icon.dart';
import '../../../../../exports.dart';

class SignupBackArrowAndAppLogoSection extends StatelessWidget {
  const SignupBackArrowAndAppLogoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SeniorCodeAppBar(
          height: 15.62,
          width: 18.11,
        ),
        25.hs,
        const SeniorCodeIcon(),
      ],
    );
  }
}
