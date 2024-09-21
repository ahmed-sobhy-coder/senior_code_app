import 'package:senior_code_app/core/extensions.dart';

import '../../exports.dart';

class SeniorCodeIcon extends StatelessWidget {
  const SeniorCodeIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 68.h,
      width: 140.w,
      child: Image.asset(AppAssets.seniorCodeLogoImage),
    );
  }
}
