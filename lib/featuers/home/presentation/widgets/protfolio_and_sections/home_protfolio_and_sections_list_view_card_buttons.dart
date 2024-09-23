import 'package:senior_code_app/core/extensions.dart';

import '../../../../../exports.dart';
import '../portfolio/home_protfolio_button.dart';

class HomeProtfolioAndSectionsListViewCardButtons extends StatelessWidget {
    final String? firstButtonText;
  final String? secondButtonText;
    final VoidCallback? onFirstButtonTap;
  final VoidCallback? onSecondButtonTap;
    // Button visibility
  final bool showFirstButton;
  final bool showSecondButton;
    final double? spaceBetweenButtons;

  const HomeProtfolioAndSectionsListViewCardButtons({super.key, this.firstButtonText, this.secondButtonText, this.onFirstButtonTap, this.onSecondButtonTap, required this.showFirstButton, required this.showSecondButton, this.spaceBetweenButtons});

  @override
  Widget build(BuildContext context) {
    return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  if (showFirstButton &&
                      firstButtonText != null &&
                      onFirstButtonTap != null) ...[
                    ProtfolioButton(
                      text: firstButtonText!, // Dynamic button text
                      onTap: onFirstButtonTap!, // Dynamic button action
                    ),
                    spaceBetweenButtons?.hs ?? 15.hs, // Space between buttons
                  ],
                  if (showSecondButton &&
                      secondButtonText != null &&
                      onSecondButtonTap != null) ...[
                    ProtfolioButton(
                      text: secondButtonText!, // Dynamic button text
                      onTap: onSecondButtonTap!, // Dynamic button action
                    ),
                  ],
                ],
              );
  }
}