import '../../../../../core/widgets/senior_code_app_bar.dart';
import '../../../../../core/widgets/senior_code_icon.dart';
import '../../../../../exports.dart';

class SignupBackArrowAndAppLogoSection extends StatelessWidget {
  const SignupBackArrowAndAppLogoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SeniorCodeAppBarArrow(
          height: 15.62,
          width: 18.11,
        ),
        // 25.hs,
        Expanded(
          child: SeniorCodeIcon(),
        ),
      ],
    );
  }
}
