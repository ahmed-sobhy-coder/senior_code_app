import 'package:flutter/material.dart';
import 'package:senior_code_app/core/extensions.dart';
import 'home_category_listview_item.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // SizedBox: A widget that forces a child to have a specific size.
      height: 161.h,
      // Here,it's setting a fixed height of 100.h units, adapted to the
      // screen size using flutter_screenutil.
      child: ListView.builder(
        // ListView.builder: A constructor that creates a scrollable list of
        // widgets. It's efficient for large lists because it builds only the
        // widgets visible on the screen.
        scrollDirection: Axis.horizontal,
        // scrollDirection: Axis.horizontal: Specifies the scroll direction
        // as horizontal.
        itemCount: 3,
        // itemCount: 7: The number of items to display in the list.
        itemBuilder: (context, index) {
          // itemBuilder: A callback function that provides the widgets for
          // each item in the list. It takes context and index as arguments.
          return GestureDetector(
            onTap: () {},
            child: CategoryListViewItem(
              itemIndex: index,
            ),
          );
        },
      ),
    );
  }
}
