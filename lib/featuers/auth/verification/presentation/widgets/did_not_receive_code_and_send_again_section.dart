import '../../../../../exports.dart';

class DidNotReceiveCodeAndSendAgain extends StatelessWidget {
  const DidNotReceiveCodeAndSendAgain({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Did not receive the code?",
          style: AppStyle.getRegularTextStyle(
            fontSize: 16,
          ),
        ),
        Text(
          "Send Again",
          style: AppStyle.getSemiboldTextStyle(
            fontSize: 16,
            color: AppColors.lighterBlueColor,
          ),
        )
      ],
    );
  }
}
