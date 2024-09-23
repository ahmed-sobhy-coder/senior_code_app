import 'package:senior_code_app/core/extensions.dart';

import '../../../../../exports.dart';

class HomeListViewCardImage extends StatelessWidget {
  final String projectImagePath;

  // Padding
  final double? imageRightPadding;
  // Sizes and padding
  final double? projectImageWidth;
  final double? projectImageHeight;

  const HomeListViewCardImage({
    super.key,
    this.imageRightPadding,
    this.projectImageWidth,
    this.projectImageHeight,
    required this.projectImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return
      SizedBox(
        width: projectImageWidth?.w ?? 89.0.w, // Customizable image width
        height: projectImageHeight?.h ?? 92.0.h, // Customizable image height
        child: Image.asset(
          projectImagePath, // Dynamic image
          fit: BoxFit.cover,
        ),
    
    );
  }
}
