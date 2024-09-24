import 'package:senior_code_app/core/extensions.dart';

import '../../../../core/utils/app_styels.dart';
import '../../../../exports.dart';
import '../../data/model/reservation_test_data.dart';

class SelectedServiceScreen extends StatelessWidget {
  final int selectedIndex;
  final VoidCallback onUndoSelection; // Callback to undo selection

  const SelectedServiceScreen(
      {super.key, required this.selectedIndex, required this.onUndoSelection});

  @override
  Widget build(BuildContext context) {
    //! TODO: Use dynamic service placeholder until backend integration is complete.
    final selectedService = services[selectedIndex];

    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Selected Service",
            style: AppStyles.getBoldStyle(
              fontSize: 18,
              color: AppColors.white,
            ),
          ),
        ),
        34.vs,
        Row(
          children: [
            GestureDetector(
              onTap: onUndoSelection, // Undo selection when image is tapped
              child: Image.asset(
                //! TODO: Use dynamic image placeholder until backend integration is complete.
                selectedService.image,
                height: 91.h,
                width: 99.w,
              ),
            ),
            45.hs,
            Text(
              //! TODO: Use dynamic title placeholder until backend integration is complete.
              selectedService.title,
              style: AppStyles.getBoldStyle(
                color: AppColors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
        45.vs,
      ],
    );
  }
}
