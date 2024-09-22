import 'package:flutter/material.dart';
// Importing the video_player package to handle video playback functionality.
import 'package:video_player/video_player.dart';

class OnBoardingVideoWidget extends StatelessWidget {
  final VideoPlayerController controller;

  const OnBoardingVideoWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    // Builds the UI with a widget that expands to fit its parent.
    return SizedBox.expand(
      // Displays the video using the VideoPlayer widget, which takes the controller to manage playback.
      child: VideoPlayer(controller),
    );
  }
}
