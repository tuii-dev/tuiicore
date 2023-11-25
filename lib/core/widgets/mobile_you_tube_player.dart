import 'package:flutter/material.dart';
import 'package:tuiicore/core/common/common.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MobileYouTubePlayerWidget extends StatefulWidget {
  final String url;
  final VoidCallback onError;
  const MobileYouTubePlayerWidget(
      {Key? key, required this.url, required this.onError})
      : super(key: key);

  @override
  State<MobileYouTubePlayerWidget> createState() =>
      _MobileYouTubePlayerWidgetState();
}

class _MobileYouTubePlayerWidgetState extends State<MobileYouTubePlayerWidget> {
  String? _videoId;
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();

    _videoId = getYouTubeVideoId(widget.url);
    if (_videoId != null) {
      _controller = YoutubePlayerController(
        initialVideoId: _videoId!,
        flags: const YoutubePlayerFlags(
          mute: false,
          autoPlay: true,
          disableDragSeek: false,
          loop: false,
          isLive: false,
          forceHD: false,
          enableCaption: false,
        ),
      );
    } else {
      widget.onError();
    }
  }

  @override
  void deactivate() {
    // Pauses video while navigating to next page.
    _controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
        bottomActions: [
          PlayPauseButton(),
          CurrentPosition(),
          ProgressBar(isExpanded: true),
        ],
      ),
    );
  }
}