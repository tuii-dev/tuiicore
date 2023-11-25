import 'package:flutter/material.dart';
import 'package:tuiicore/core/common/core_i18n.dart';
import 'package:tuiicore/core/config/theme/tuii_colors.dart';

class SaveButton extends StatelessWidget {
  const SaveButton(
      {Key? key,
      required this.callback,
      this.isEnabled = true,
      this.width,
      this.height,
      this.label,
      this.backgroundColor = TuiiColors.primary,
      this.disabledBackgroundColor = TuiiColors.inactiveTool,
      this.fontSize = 16.0})
      : super(key: key);

  final Function() callback;
  final bool isEnabled;
  final double? width;
  final double? height;
  final String? label;
  final Color? backgroundColor;
  final Color? disabledBackgroundColor;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: isEnabled ? backgroundColor : disabledBackgroundColor,
          borderRadius: BorderRadius.circular(8.0)),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            if (isEnabled) {
              callback();
            }
          },
          child: SizedBox(
              width: width,
              height: height,
              child: Center(
                child: Text(label ?? 'Save'.i18n,
                    style:
                        TextStyle(fontSize: fontSize, color: TuiiColors.white)),
              )),
        ),
      ),
    );
  }
}