import 'package:senior_code_app/core/extensions.dart';
import 'package:senior_code_app/core/utils/app_styels.dart';
import '../../../../../exports.dart';
import '../../data/model/reservation_data_model.dart';

class ReservationCategoryListViewItem extends StatelessWidget {
  final int itemIndex;
  final bool isSelected;
  final Service service; // The dynamic service data

  const ReservationCategoryListViewItem({
    super.key,
    required this.itemIndex,
    required this.service, // Receive the service data
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: itemIndex == 0 ? 0.w : 14.w,
      ),
      child: Column(
        children: [
          Image.asset(
            service.image,
            height: 91.h,
            width: 99.w,
          ),
          8.vs,
          Align(
            alignment: Alignment.center,
            child: Text(
              service.title,
              style: AppStyles.getSemiBoldStyle(
                fontSize: 11,
                color: AppColors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
