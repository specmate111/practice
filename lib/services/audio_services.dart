import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class MusicPlayer {
  final AudioPlayer _audioPlayer = AudioPlayer();
  // Duration _currentDuration = Duration.zero;
  // Duration _totalDuration = Duration.zero;

  //play the song

  void play(src) async {
    await _audioPlayer.stop();
    await _audioPlayer.play(UrlSource(src));
  }

  //pause the song

  void pause(isPlaying) async {
    await _audioPlayer.pause();
    isPlaying = false;
    print('paused');
  }

  // resume the song

  void resume(isPlaying) async {
    await _audioPlayer.resume();
    isPlaying = true;
    print('resume');
  }

// resume or pause

  void resumeOrPause(isPlaying) async {
    if (isPlaying) {
      pause(isPlaying);
    } else {
      resume(isPlaying);
    }
  }
}
