import 'package:senior_code_app/core/extensions.dart';
import 'package:senior_code_app/core/utils/app_styels.dart';
import 'package:senior_code_app/exports.dart';

class CategoryText extends StatelessWidget {
  const CategoryText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 9.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Category",
            style: AppStyles.getSemiBoldStyle(
              fontFamily: FontFamilies.poppinsFamily,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
