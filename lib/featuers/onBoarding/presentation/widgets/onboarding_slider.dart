import 'package:flutter/material.dart';
import 'package:senior_code_app/core/extensions.dart';
import 'package:senior_code_app/featuers/onBoarding/presentation/widgets/onboarding_app_bar_section.dart';
import 'package:video_player/video_player.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styels.dart';
import '../../data/onboarding_model.dart';
import 'onboarding_button.dart';
import 'play_pause_button.dart';
import 'video_widget.dart';

class OnBoardingSlider extends StatefulWidget {
  final List<OnboardingModel> onBoardingItems; // List of onboarding items
  static final selectedVideoNotifier =
      ValueNotifier<int>(0); // ValueNotifier to track selected video
  static final PageController pageController =
      PageController(); // Controller for page view navigation

  // Map to store onboarding text titles
  static final onBoardingTexts = {
    'FirstOnBoardingTitleWord': AppStrings.firstLineOnBoardingScreenTitleWord,
    'SecondOnBoardingTitleWord': AppStrings.secondLineOnBoardingScreenTitleWord,
    'ThirdOnBoardingTitleWord': AppStrings.thirdLineOnBoardingScreenTitleWord,
  };

  const OnBoardingSlider({super.key, required this.onBoardingItems});

  @override
  State<OnBoardingSlider> createState() => _OnBoardingSliderState();
}

class _OnBoardingSliderState extends State<OnBoardingSlider> {
  late List<VideoPlayerController>
      _videoControllers; // Controllers for each onboarding video
  late List<Future<void>>
      _initializeVideoFutures; // Futures for video initialization
  int _currentPageIndex = 0; // Keeps track of the current page index
  late List<ValueNotifier<bool>>
      _isPlayingNotifiers; // Notifiers to track play/pause state of each video

  @override
  void initState() {
    super.initState();
    _initializeVideos(); // Initialize videos when widget is created
  }

  // Initializes video controllers and futures
  void _initializeVideos() {
    _videoControllers = widget.onBoardingItems.map((item) {
      final controller =
          VideoPlayerController.asset(item.videoPath); // Load video from assets
      controller.setLooping(false); // Set looping to false for each video
      return controller;
    }).toList();

    _initializeVideoFutures = _videoControllers
        .map((controller) => controller.initialize())
        .toList(); // Initialize each video

    // Play the first video once all are initialized
    Future.wait(_initializeVideoFutures).then((_) {
      setState(() {
        _videoControllers[0].play();
      });
    });

    _setupListeners(); // Setup listeners for video completion

    // Initialize the play state notifiers for each video, first video starts as playing
    _isPlayingNotifiers = List.generate(
        _videoControllers.length, (index) => ValueNotifier<bool>(index == 0));
  }

  // Adds listeners to handle video completion events
  void _setupListeners() {
    for (int i = 0; i < _videoControllers.length; i++) {
      _videoControllers[i].addListener(() {
        // Check if the current video has finished playing
        if (_videoControllers[i].value.position ==
            _videoControllers[i].value.duration) {
          if (i == _videoControllers.length - 1) {
            // If last video, pause it and update its state
            setState(() {
              _videoControllers[i].pause();
              _isPlayingNotifiers[i].value = false;
            });
          } else {
            // Move to the next video
            _onVideoComplete(i);
          }
        }
      });
    }
  }

  // Handles video completion by pausing the current video and moving to the next
  void _onVideoComplete(int index) {
    if (index < _videoControllers.length - 1) {
      setState(() {}); // Trigger a rebuild
      _videoControllers[index].pause(); // Pause the current video
      _isPlayingNotifiers[index].value = false; // Mark it as not playing
      // Move to the next page
      OnBoardingSlider.pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  // Handles page change events
  void _onPageChanged(int index) {
    if (index != _currentPageIndex) {
      // Pause and reset the previous video
      _videoControllers[_currentPageIndex].pause();
      _videoControllers[_currentPageIndex].seekTo(Duration.zero);
      _isPlayingNotifiers[_currentPageIndex].value = false;
      // Update the current page index and play the new video
      setState(() {
        _currentPageIndex = index;
      });
      _videoControllers[_currentPageIndex].play();
      _isPlayingNotifiers[_currentPageIndex].value = true;
    }
  }

  @override
  void dispose() {
    // Dispose all video controllers and page controller when widget is destroyed
    for (var controller in _videoControllers) {
      controller.dispose();
    }
    OnBoardingSlider.pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: Future.wait(
          _initializeVideoFutures), // Wait for all videos to be initialized
      builder: (context, snapshot) {
        return Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: OnBoardingSlider
                    .pageController, // Page controller for navigation
                itemCount:
                    widget.onBoardingItems.length, // Number of onboarding pages
                // onPageChanged callback to handle page changes
                onPageChanged: (index) {
                  _onPageChanged(index);
                },
                itemBuilder: (context, index) {
                  return Stack(
                    alignment: Alignment.center,
                    children: [
                      // Video widget to display the onboarding video
                      OnBoardingVideoWidget(
                          controller: _videoControllers[index]),
                      // Custom app bar for the onboarding screen
                      OnBoardingAppBarWidget(value: index),
                      // Play/pause button for the current video
                      OnBoardingPlayPauseButton(
                          controller: _videoControllers[_currentPageIndex],
                          isPlayingNotifier:
                              _isPlayingNotifiers[_currentPageIndex]),
                      // Next button to proceed to the next onboarding screen
                      NextButton(value: index),
                      // Display the onboarding texts only for the first page
                      if (index == 0)
                        Positioned(
                          top: 201.h,
                          left: 22.w,
                          child: Container(
                            alignment: Alignment.topLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // First title word from onboarding texts
                                Text(
                                  OnBoardingSlider.onBoardingTexts[
                                      'FirstOnBoardingTitleWord']!,
                                  style: AppStyles.getBoldStyle(
                                    fontSize: 48,
                                    color: AppColors.white,
                                  ),
                                ),
                                // Second title word with underline decoration
                                Text(
                                  OnBoardingSlider.onBoardingTexts[
                                      'SecondOnBoardingTitleWord']!,
                                  style: AppStyles.getBoldStyle(
                                    fontSize: 48,
                                    color: AppColors.lighterBlueColor,
                                    decoration: TextDecoration.underline,
                                    decorationColor: AppColors.lighterBlueColor,
                                  ),
                                ),
                                // Third title word
                                Text(
                                  OnBoardingSlider.onBoardingTexts[
                                      'ThirdOnBoardingTitleWord']!,
                                  style: AppStyles.getBoldStyle(
                                    fontSize: 48,
                                    color: AppColors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                    ],
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
