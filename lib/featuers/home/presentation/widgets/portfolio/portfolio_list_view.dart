import 'package:flutter/material.dart';
import 'package:senior_code_app/core/extensions.dart';
import 'portfolio_list_view_item.dart';

class PortfolioListView extends StatelessWidget {
  const PortfolioListView({super.key});

  @override
  Widget build(BuildContext context) {
    const int itemCount = 3; // Number of list items

    return Padding(
      padding: EdgeInsets.only(right: 3.w),
      child: Column(
        children: List.generate(
          itemCount,
          (index) {
            return const PortfolioListViewItem();
          },
        ),
      ),
    );
  }
}
