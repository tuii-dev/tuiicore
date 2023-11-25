import 'package:flutter/material.dart';
import '../config/theme/tuii_colors.dart';

SnackBar customSnackBar(
    {Color backgroundColor = TuiiColors.redBadge,
    Duration duration = const Duration(seconds: 6),
    Icon? icon,
    required BuildContext context,
    required bool isError,
    required String message}) {
  return SnackBar(
      backgroundColor: backgroundColor,
      duration: duration,
      content: _getContentRow(context, isError, message, icon));
}

Widget _getContentRow(
    BuildContext context, bool isError, String message, Icon? icon) {
  if (isError || icon != null) {
    if (isError && icon == null) {
      icon =
          const Icon(Icons.error_outline, color: TuiiColors.white, size: 30.0);
    }
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      icon!,
      const SizedBox(width: 10.0),
      Flexible(
        child: Text(message,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: isError ? TuiiColors.white : TuiiColors.white,
                fontSize: 16.0)),
      )
    ]);
  } else {
    return Flexible(
      child: Text(message,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(color: TuiiColors.white, fontSize: 16.0)),
    );
  }
}