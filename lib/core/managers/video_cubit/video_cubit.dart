import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:video_player/video_player.dart';

import '../../change_state.dart';

class VideoCubit extends Cubit<ChangeState> {
  VideoPlayerController? videoPlayerController;

  VideoCubit() : super(ChangeState(value: false));
  init(String url) {
    if (kDebugMode) {
      print("video is $url");
    }
    videoPlayerController = VideoPlayerController.networkUrl(Uri.parse(url))
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        emit(ChangeState(value: true));
        if (kDebugMode) {
          print("viiiiiiiiiiiiideo is loaded");
        }
      });
  }
}
