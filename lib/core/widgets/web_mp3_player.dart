import 'package:flutter/material.dart';
import 'package:tuiicore/core/widgets/audio_player/audio_player.dart';

class WebMp3PlayerWidget extends StatefulWidget {
  final String url;
  const WebMp3PlayerWidget({Key? key, required this.url}) : super(key: key);

  @override
  State<WebMp3PlayerWidget> createState() => _WebMp3PlayerWidgetState();
}

class _WebMp3PlayerWidgetState extends State<WebMp3PlayerWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TuiiAudioPlayer(mp3Url: widget.url, controlIconSize: 40),
    );
  }
}