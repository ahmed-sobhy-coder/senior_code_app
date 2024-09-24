import 'package:senior_code_app/core/extensions.dart';
import '../../../../core/utils/app_styels.dart';
import '../../../../exports.dart';
import '../../data/model/reservation_test_data.dart';
import 'reservation_category_listview_item.dart';

class ReservationCategoryListView extends StatefulWidget {
  final Function(int) onSelectService; // Callback to pass the selected index

  const ReservationCategoryListView({super.key, required this.onSelectService});

  @override
  State<ReservationCategoryListView> createState() =>
      _ReservationCategoryListViewState();
}

class _ReservationCategoryListViewState
    extends State<ReservationCategoryListView> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Available Services",
            style: AppStyles.getBoldStyle(
              fontSize: 18,
              color: AppColors.white,
            ),
          ),
        ),
        16.vs,
        SizedBox(
          height: 161.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: services.length, // Dynamic based on number of services
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                  widget
                      .onSelectService(index); // Here I Pass the selected index
                },
                child: ReservationCategoryListViewItem(
                  itemIndex: index,
                  service: services[
                      index], // Here I Pass the service data dynamically
                  isSelected: selectedIndex == index,
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
