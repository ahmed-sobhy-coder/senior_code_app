import '../../../../../core/utils/app_styels.dart';
import '../../../../../exports.dart';

class StatisticsAmountNumber extends StatelessWidget {
  final String statisticsAmountNumber;

  const StatisticsAmountNumber(
      {super.key, required this.statisticsAmountNumber});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        statisticsAmountNumber,
        style: AppStyles.getBoldStyle(
          fontSize: 18,
          fontFamily: FontFamilies.fontFamilyNunitoSans,
        ),
      ),
    );
  }
}
