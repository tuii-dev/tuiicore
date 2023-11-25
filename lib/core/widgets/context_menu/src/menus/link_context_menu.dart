import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../tuii_context_menus.dart';

class LinkContextMenu extends StatefulWidget {
  const LinkContextMenu({Key? key, required this.url, this.useIcons = true})
      : super(key: key);
  final String url;
  final bool useIcons;

  @override
  _LinkContextMenuState createState() => _LinkContextMenuState();
}

class _LinkContextMenuState extends State<LinkContextMenu>
    with ContextMenuStateMixin {
  @override
  Widget build(BuildContext context) {
    return cardBuilder.call(
      context,
      [
        buttonBuilder.call(
          context,
          ContextMenuButtonConfig(
            "Open link in new window",
            icon: widget.useIcons ? const Icon(Icons.link, size: 18) : null,
            onPressed: () => handlePressed(context, _handleNewWindowPressed),
          ),
        ),
        buttonBuilder.call(
          context,
          ContextMenuButtonConfig(
            "Copy link address",
            icon: widget.useIcons ? const Icon(Icons.copy, size: 18) : null,
            onPressed: () => handlePressed(context, _handleClipboardPressed),
          ),
        )
      ],
    );
  }

  String _getUrl() {
    String url = widget.url;
    bool needsPrefix = !url.contains("http://") && !url.contains("https://");
    return (needsPrefix) ? "https://" + url : url;
  }

  void _handleNewWindowPressed() async {
    try {
      final url = Uri.parse(_getUrl());
      launchUrl(url);
    } catch (e) {
      debugPrint("$e");
    }
  }

  void _handleClipboardPressed() async =>
      Clipboard.setData(ClipboardData(text: _getUrl()));
}