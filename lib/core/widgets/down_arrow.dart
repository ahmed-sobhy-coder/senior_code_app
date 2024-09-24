import 'package:senior_code_app/core/extensions.dart';

import '../../exports.dart';

class DownArrow extends StatelessWidget {
  final Color? downArrowColor;
  final double? downArrowSize;
  const DownArrow({super.key, this.downArrowColor, this.downArrowSize});

  @override
  Widget build(BuildContext context) {
    return Icon(
      color:downArrowColor?? AppColors.white,
      Icons.keyboard_arrow_down_rounded,
      size: downArrowSize?.r ?? 26.r,
    );
  }
}
