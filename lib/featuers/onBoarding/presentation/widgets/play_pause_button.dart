import 'package:flutter/material.dart';
import 'package:senior_code_app/core/extensions.dart';
import 'package:video_player/video_player.dart';


// PlayPauseButton widget to control video playback
class PlayPauseButton extends StatelessWidget {
  final VideoPlayerController controller; // Controller to manage video playback
  final ValueNotifier<bool>
      isPlayingNotifier; // Notifier to track play/pause state

  // Constructor for PlayPauseButton
  const PlayPauseButton({
    super.key,
    required this.controller, // Required VideoPlayerController
    required this.isPlayingNotifier, // Required ValueNotifier for play state
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 14.62), // Adding top padding to the button
      child: Center(
        child: GestureDetector(
          // Detects tap gestures on the button
          onTap: () {
            // Toggles play/pause state on tap
            if (controller.value.isPlaying) {
              controller.pause(); // Pause the video
              isPlayingNotifier.value = false; // Update play state to false
            } else {
              controller.play(); // Play the video
              isPlayingNotifier.value = true; // Update play state to true
            }
          },
          child: ValueListenableBuilder<bool>(
            // Builds UI based on play state
            valueListenable:
                isPlayingNotifier, // Listens for changes in play state
            builder: (context, isPlaying, child) {
              // Returns appropriate icon based on play state
              return isPlaying
                  ? Icon(
                      Icons.pause_circle_filled,
                      size: 64.r,
                      color: Colors.white,
                    ) // Pause icon
                  : Icon(
                      Icons.play_circle_fill,
                      size: 64.r,
                      color: Colors.white,
                    ); // Pa
              //  CustomSVGImage(asset: AppAssets().play); // Play icon
            },
          ),
        ),
      ),
    );
  }
}
