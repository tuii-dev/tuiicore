import 'package:flutter/material.dart';
import 'package:tuiicore/core/common/core_i18n.dart';
import 'package:tuiicore/core/config/theme/tuii_colors.dart';

class ItemResourceButton extends StatelessWidget {
  const ItemResourceButton({
    Key? key,
    required this.callback,
    this.width,
    this.height,
    this.label,
    this.fontSize = 16,
  }) : super(key: key);

  final Function() callback;
  final double? width;
  final double? height;
  final String? label;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: TuiiColors.primary,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => callback(),
          child: SizedBox(
              width: width,
              height: height,
              child: Center(
                child: Text(label ?? 'Delete'.i18n,
                    style:
                        TextStyle(fontSize: fontSize, color: TuiiColors.white)),
              )),
        ),
      ),
    );
  }
}