import '../../../../../core/utils/app_styels.dart';
import '../../../../../exports.dart';

class DidNotReceiveCodeAndSendAgain extends StatelessWidget {
  const DidNotReceiveCodeAndSendAgain({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Did not receive the code?",
          style: AppStyles.getRegularStyle(
            fontSize: 16,
          ),
        ),
        Text(
          "Send Again",
          style: AppStyles.getSemiBoldStyle(
            fontSize: 16,
            color: AppColors.lighterBlueColor,
          ),
        )
      ],
    );
  }
}
