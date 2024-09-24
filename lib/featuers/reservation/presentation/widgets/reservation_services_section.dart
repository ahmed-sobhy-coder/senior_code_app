import '../../../../exports.dart';
import 'reservation_category_list_view_section.dart';
import 'reservation_selected_service_section.dart';

class ReservationServicesSection extends StatefulWidget {
  const ReservationServicesSection({super.key});

  @override
  State<ReservationServicesSection> createState() =>
      _ReservationServicesSectionState();
}

class _ReservationServicesSectionState
    extends State<ReservationServicesSection> {
  int? selectedServiceIndex;

  @override
  Widget build(BuildContext context) {
    return selectedServiceIndex == null
        ? ReservationCategoryListView(
            onSelectService: (index) {
              setState(() {
                selectedServiceIndex = index;
              });
            },
          )
        : SelectedServiceScreen(
            selectedIndex: selectedServiceIndex!,
            onUndoSelection: () {
              setState(
                () {
                  selectedServiceIndex = null; // Reset the selected index
                },
              );
            },
          );
  }
}
