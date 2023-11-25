import 'package:flutter/material.dart';
import 'package:tuiicore/core/common/core_i18n.dart';
import 'package:tuiicore/core/config/theme/tuii_colors.dart';

class NextButton extends StatelessWidget {
  const NextButton({
    Key? key,
    required this.callback,
    this.label,
  }) : super(key: key);

  final Function() callback;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: TuiiColors.primary, borderRadius: BorderRadius.circular(8.0)),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => callback(),
          child: SizedBox(
              width: 100.0,
              height: 36.0,
              child: Center(
                child: Text(label != null ? label! : 'Next'.i18n,
                    style: const TextStyle(
                        fontSize: 14.0, color: TuiiColors.white)),
              )),
        ),
      ),
    );
  }
}