// Helper widget, to dispatch Notifications when a right-click is detected on some child
import 'package:flutter/widgets.dart';

import '../tuii_context_menus.dart';

/// Wraps any widget in a GestureDetector and calls [TuiiContextMenuOverlay].show
class TuiiContextMenuRegion extends StatelessWidget {
  const TuiiContextMenuRegion(
      {Key? key,
      required this.child,
      required this.contextMenu,
      this.isEnabled = true,
      this.enableLongPress = false,
      this.enableTap = true})
      : super(key: key);
  final Widget child;
  final Widget contextMenu;
  final bool isEnabled;
  final bool enableLongPress;
  final bool enableTap;
  @override
  Widget build(BuildContext context) {
    void showMenu() {
      // calculate widget position on screen
      context.contextMenuOverlay.show(contextMenu);
    }

    if (isEnabled == false) return child;
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      // onSecondaryTap: showMenu,
      // onLongPress: enableLongPress ? showMenu : null,
      onTap: () {
        if (enableTap) {
          showMenu();
        }
      },
      child: child,
    );
  }
}