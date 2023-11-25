import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:tuiicore/core/common/core_i18n.dart';
import 'package:tuiicore/core/config/theme/tuii_colors.dart';

class ActionsButton extends StatelessWidget {
  const ActionsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      // onTap: () => _closeAllControls(),
      cursor: SystemMouseCursors.click,
      child: Container(
        height: 26,
        width: 90,
        decoration: BoxDecoration(
            color: TuiiColors.primary,
            border: Border.all(
              color: TuiiColors.primary,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(13))),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text('ACTIONS'.i18n,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                        color: TuiiColors.white)),
              ),
              const Icon(MdiIcons.chevronDown,
                  size: 14, color: TuiiColors.white),
            ],
          ),
        ),
      ),

      // Icon(MdiIcons.dotsVertical,
      //     size: 25, color: TuiiColors.inactiveTool),
    );
  }
}