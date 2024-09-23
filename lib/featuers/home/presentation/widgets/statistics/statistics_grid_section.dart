import 'package:flutter/material.dart';
import 'package:senior_code_app/core/extensions.dart';
import 'statistics_section_data_passer.dart';
import 'statistics_data_source.dart';

class StatisticsGridSection extends StatelessWidget {
  const StatisticsGridSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // 2 items in a row
        childAspectRatio: 0.96.r, // Aspect ratio of each item
        crossAxisSpacing: 15.w, // Spacing between columns
        mainAxisSpacing: 24.h, // Spacing between rows
      ),
      itemCount: statisticsData.length, // Number of items in the grid
      itemBuilder: (context, index) {
        final data =
            statisticsData[index]; // Get the specific data for this index
        return StatisticsSectionDataPasser(
          title: data['title'] as String,
          iconPath: data['icon'] as String,
          amount: data['amount'] as String,
          percentage: data['percentage'] as String,
        );
      },
      physics: const NeverScrollableScrollPhysics(), // Disable scrolling
      shrinkWrap: true, // Makes the GridView wrap its height
    );
  }
}
