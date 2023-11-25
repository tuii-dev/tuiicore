import 'dart:async';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:tuiicore/core/config/theme/tuii_colors.dart';
import 'package:tuiicore/core/services/toast_service.dart';

class ToastServiceImpl extends ToastService {
  Timer? timer;
  List<String> messages = [];

  @override
  bool queueToast(String message, int milliseconds) {
    timer?.cancel();
    if (!messages.contains(message)) {
      messages.add(message);
    }

    timer = Timer(Duration(milliseconds: milliseconds), () {
      if (messages.isNotEmpty) {
        Fluttertoast.showToast(
            msg: messages[0],
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.TOP_LEFT,
            timeInSecForIosWeb: 5,
            backgroundColor: TuiiColors.defaultDarkColor,
            webBgColor: "linear-gradient(to right, #002a39, #024158)",
            textColor: TuiiColors.white,
            fontSize: 16.0,
            webShowClose: true);

        messages = [];
      }
    });

    return true;
  }
}