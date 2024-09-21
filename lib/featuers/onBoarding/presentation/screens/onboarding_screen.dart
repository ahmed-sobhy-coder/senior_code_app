import 'package:flutter/material.dart';

import '../../../../core/utils/app_assets.dart';
import '../../data/onboarding_model.dart';
import '../widgets/onboarding_slider.dart';

/// A StatelessWidget that represents the Onboarding Screen of the app.
/// This screen shows a series of onboarding videos to the user.
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  /// A static list of video paths that will be shown in the onboarding slider.
  /// Currently, all the video paths point to the same test video asset.
  static final videoPathList = <String>[
    AppAssets.testOnBoardingVideo, // Reference to a test onboarding video.
    AppAssets.testOnBoardingVideo, // Same video used again.
    AppAssets.testOnBoardingVideo, // Same video used for the third time.
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // The Scaffold provides a layout structure with a body.
      body: Column(
        // The body contains a single column with an expanded slider.
        children: [
          Expanded(
            // The Expanded widget takes up the remaining space to display the onboarding slider.
            child: OnBoardingSlider(
              // Creating an OnBoardingSlider widget that takes in a list of OnboardingModel items.
              onBoardingItems: List.generate(videoPathList.length, (index) {
                // For each video path in videoPathList, an OnboardingModel is created.
                return OnboardingModel(videoPath: videoPathList[index]);
              }),
            ),
          ),
        ],
      ),
    );
  }
}
