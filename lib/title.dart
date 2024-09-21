import 'package:flutter/material.dart';
import 'package:another_flushbar/flushbar.dart';

enum AlertType { Success, Error, Description, Warning }

class tieude {
  Future<void> showSnackhastitle(
      {required BuildContext context,
      required AlertType type,
      String? title,
      required String message}) async // has title
  {
    Color bgr = Colors.white;
    Icon? icon;
    if (type == AlertType.Success) {
      bgr = Colors.deepOrangeAccent;
      icon = const Icon(Icons.check, color: Colors.yellow);
    } else if (type == AlertType.Warning) {
      bgr = Colors.blue;
      icon = const Icon(Icons.error_outline, color: Colors.yellow);
    } else if (type == AlertType.Error) {
      bgr = Colors.blue;
      icon = const Icon(Icons.clear_outlined, color: Colors.red);
    } else if (type == AlertType.Description) {
      bgr = Colors.blueGrey;
      icon = const Icon(Icons.error_outline, color: Colors.blueAccent);
    }
    if (title != null) {
      Flushbar(
        title: title,
        message: message,
        icon: icon,
        backgroundColor: bgr,
        flushbarPosition: FlushbarPosition.TOP,
        duration: const Duration(seconds: 2),
        borderRadius: BorderRadius.circular(20),
        margin: const EdgeInsets.all(20),
      ).show(context);
    } else {
      Flushbar(
        message: message,
        icon: icon,
        backgroundColor: bgr,
        flushbarPosition: FlushbarPosition.TOP,
        duration: const Duration(seconds: 2),
        borderRadius: BorderRadius.circular(20),
        margin: const EdgeInsets.all(20),
      ).show(context);
    }
  }
}
