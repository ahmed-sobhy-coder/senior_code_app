import 'package:flutter/material.dart';
import 'statistics_body_section.dart';

class StatisticsSectionDataPasser extends StatelessWidget {
  final String title;
  final String iconPath;
  final String amount;
  final String percentage;

  const StatisticsSectionDataPasser({
    super.key,
    required this.title,
    required this.iconPath,
    required this.amount,
    required this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    return StatisticsSectionBody(
      statisticstitle: title,
      statisticsIconPath: iconPath,
      statisticsAmountNumber: amount,
      statisticsPercentageAmount: percentage,
    );
  }
}
