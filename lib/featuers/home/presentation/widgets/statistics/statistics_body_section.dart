import 'package:senior_code_app/core/extensions.dart';

import '../../../../../exports.dart';
import 'statistics_amount_number.dart';
import 'statistics_title_and_icon.dart';
import 'statistics_trend_icon_and_precentage_and_text.dart';

class StatisticsSectionBody extends StatelessWidget {
  final String statisticstitle;
  final String statisticsIconPath;
  final String statisticsAmountNumber;
  final String statisticsPercentageAmount;

  const StatisticsSectionBody({
    super.key,
    required this.statisticstitle,
    required this.statisticsIconPath,
    required this.statisticsAmountNumber,
    required this.statisticsPercentageAmount,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      color: AppColors.white,
      child: Padding(
        padding: EdgeInsets.only(
          top: 16.h,
          // bottom: 27.h,
          left: 15.w,
          right: 9.w,
        ),
        child: Column(
          children: [
            StatisticsTitleAndIcon(
              statisticstitle: statisticstitle,
              statisticsIconPath: statisticsIconPath,
            ),
            11.vs,
            StatisticsAmountNumber(
              statisticsAmountNumber: statisticsAmountNumber,
            ),
            13.vs,
            StatisticsTrendIconAndPrecentageAndText(
              statisticsPercentageAmount: statisticsPercentageAmount,
            ),
          ],
        ),
      ),
    );
  }
}
