import 'package:senior_code_app/core/extensions.dart';
import 'package:senior_code_app/core/widgets/custome_svg_image.dart';

import '../../exports.dart';

class SeniorCodeAppBar extends StatelessWidget {
  final Color? backArrowIconColor;
  final double? height;
  final double? width;
  const SeniorCodeAppBar({
    super.key,
    this.backArrowIconColor,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: SizedBox(
        width: width?.w ?? 17.5.w,
        height: height?.h ?? 17.5.h,
        child: CustomSVGImage(
          asset: AppAssets.backIcon,
          color: backArrowIconColor ?? AppColors.white,
        ),
      ),
    );
  }
}
