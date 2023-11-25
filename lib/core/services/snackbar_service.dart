import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

abstract class SnackbarService {
  bool queueSnackbar(
      BuildContext context, bool isError, String message, int milliseconds,
      {Color backgroundColor = Colors.green,
      Icon icon = const Icon(MdiIcons.emailFast, color: Colors.white)});
  bool showSnackbar(
      BuildContext context, bool isError, String message, int milliseconds,
      {Color backgroundColor = Colors.green,
      Icon icon = const Icon(MdiIcons.emailFast, color: Colors.white)});
}