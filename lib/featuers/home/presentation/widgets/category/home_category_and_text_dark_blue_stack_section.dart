import 'package:senior_code_app/core/extensions.dart';
import 'package:senior_code_app/exports.dart';

import 'home_category_background_and_text_and_button.dart';

class WomanAndTextBlueStack extends StatelessWidget {
  const WomanAndTextBlueStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 3.w, right: 7.w),
      child: SizedBox(
        // To add a space that the doctor image can expand in it ...
        height: 181.h,
        child: Stack(
          // Uses a Stack widget to allow layering of children widgets.
          alignment: Alignment.bottomCenter,
          // Aligns the children of the stack to the bottom center.
          children: [
            const HomeCategoryBackgroundAndTextAndButton(),
            Positioned(
              // Positions a widget relative to its parent stack.
              right: 8.w,
              top: 0.h,
              child: Image.asset(
                AppAssets.womanHome,
                height: 200.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
