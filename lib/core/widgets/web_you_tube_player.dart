import 'package:flutter/material.dart';
import 'package:tuiicore/core/common/common.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class WebYouTubePlayerWidget extends StatefulWidget {
  final String url;
  final VoidCallback onError;
  const WebYouTubePlayerWidget(
      {Key? key, required this.url, required this.onError})
      : super(key: key);

  @override
  State<WebYouTubePlayerWidget> createState() => _WebYouTubePlayerWidgetState();
}

class _WebYouTubePlayerWidgetState extends State<WebYouTubePlayerWidget> {
  String? _videoId;
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();

    _videoId = getYouTubeVideoId(widget.url);
    if (_videoId != null) {
      _controller = YoutubePlayerController(
        initialVideoId: _videoId!,
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
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
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: YoutubePlayerIFrame(
        controller: _controller,
        aspectRatio: 16 / 9,
      ),
    );
  }
}