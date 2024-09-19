import 'package:senior_code_app/core/extensions.dart';

import '../../exports.dart';

class SeniorCodeAppBar extends StatelessWidget {
  final Color? backArrowIconColor;
  final double? overAllRoundedSize;
  const SeniorCodeAppBar(
      {super.key, this.backArrowIconColor, this.overAllRoundedSize});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(
        size: overAllRoundedSize?.r ?? 17.5.r,
        // weight: 1.5,
        Icons.arrow_back,
        color: backArrowIconColor ?? AppColors.white,
      ),
    );
  }
}
