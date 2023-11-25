import 'dart:html' as html;
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

String? getYouTubeVideoId(String url) {
  return YoutubePlayer.convertUrlToId(url);
}

void downloadFileToClientBrowser(String url, String downloadName) {
  // Create the link with the file
  final anchor = html.AnchorElement(href: url);
  anchor.download = downloadName;
  anchor.click();
}