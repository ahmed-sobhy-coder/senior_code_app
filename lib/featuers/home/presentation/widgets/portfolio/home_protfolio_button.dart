import 'package:senior_code_app/core/extensions.dart';

import '../../../../../core/utils/app_styels.dart';
import '../../../../../exports.dart';

class ProtfolioButton extends StatelessWidget {
  final String text;
  final void Function() onTap;
  const ProtfolioButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 0.w, vertical: 6.h),
        decoration: BoxDecoration(
          color: AppColors.lightLavender,
          borderRadius: BorderRadius.circular(20.r),
        ),
        height: 28.h,
        width: 83.w,
        alignment: Alignment.center,
        child: Align(
          alignment: Alignment.center,
          child: Text(
            text,
            style: AppStyles.getRegularStyle(
              fontSize: 13,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ),
      ),
    );
  }
}
