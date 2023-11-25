import 'package:flutter/material.dart';

import 'src/tuii_context_menu_overlay.dart';

export 'src/menus/context_menu_state_mixin.dart';
export 'src/menus/link_context_menu.dart';
export 'src/menus/text_context_menu.dart';
export 'src/menus/generic_context_menu.dart';

export 'src/widgets/context_menu_button.dart';
export 'src/widgets/context_menu_card.dart';
export 'src/widgets/context_menu_divider.dart';

export 'src/tuii_context_menu_overlay.dart';
export 'src/tuii_context_menu_region.dart';

extension TuiiContextMenuExtensions on BuildContext {
  TuiiContextMenuOverlayState get contextMenuOverlay =>
      TuiiContextMenuOverlay.of(this);
}