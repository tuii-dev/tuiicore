import 'dart:async';

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:tuiicore/core/services/snackbar_service.dart';
import 'package:tuiicore/core/widgets/custom_snack_bar.dart';

class SnackbarServiceImpl extends SnackbarService {
  Timer? timer;
  List<String> messages = [];
  BuildContext? context;

  @override
  bool queueSnackbar(
      BuildContext context, bool isError, String message, int milliseconds,
      {Color backgroundColor = Colors.green,
      Icon icon = const Icon(MdiIcons.emailFast, color: Colors.white)}) {
    timer?.cancel();
    if (!messages.contains(message)) {
      messages.add(message);
    }

    timer = Timer(Duration(milliseconds: milliseconds), () {
      if (messages.isNotEmpty) {
        if (isError == true) {
          ScaffoldMessenger.of(context).showSnackBar(
            customSnackBar(context: context, isError: true, message: message),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(customSnackBar(
              context: context,
              isError: false,
              backgroundColor: backgroundColor,
              icon: icon,
              message: message));
        }

        messages = [];
      }
    });

    return true;
  }

  @override
  bool showSnackbar(
      BuildContext context, bool isError, String message, int milliseconds,
      {Color backgroundColor = Colors.green,
      Icon icon = const Icon(MdiIcons.emailFast, color: Colors.white)}) {
    if (isError == true) {
      ScaffoldMessenger.of(context).showSnackBar(
        customSnackBar(context: context, isError: true, message: message),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(customSnackBar(
          context: context,
          isError: false,
          backgroundColor: backgroundColor,
          icon: icon,
          message: message));
    }

    return true;
  }
}