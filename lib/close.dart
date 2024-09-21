import 'package:flutter/material.dart';
import 'package:practicesnackbar/title.dart';
import 'package:another_flushbar/flushbar.dart';

class iconclose {
  Flushbar? flushbar;

  void showhasclose(
      {required BuildContext context,
      required AlertType type,
      String? title,
      bool showCloseIcon = true,
      required String message}) async // has title
  {
    Color bgr = Colors.white;
    Icon? icon;
    // if (type == AlertType.Success) {
    //   final snackBar = SnackBar(
    //     behavior: SnackBarBehavior.floating,
    //     backgroundColor: Colors.deepOrangeAccent,
    //     content: Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         children: [
    //           icon = const Icon(Icons.check, color: Colors.yellow),
    //           Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Text(title!, style: const TextStyle(
    //                   fontSize: 20, fontWeight: FontWeight.w800)),
    //               Text(message),
    //             ],
    //           ),
    //           showCloseIcon ? IconButton(
    //             icon: const Icon(Icons.close, color: Colors.white),
    //             onPressed: () {
    //               ScaffoldMessenger.of(context).hideCurrentSnackBar();
    //             },
    //           ) : const SizedBox()
    //         ]
    //     ),
    //   );
    //   ScaffoldMessenger.of(context).showSnackBar(snackBar);
    // } else if (type == AlertType.Warning) {
    //   final snackBar = SnackBar(
    //     behavior: SnackBarBehavior.floating,
    //     backgroundColor: Colors.blueAccent,
    //     content: Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         children: [
    //           icon = const Icon(Icons.error_outline, color: Colors.yellow),
    //           Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Text(title!, style: const TextStyle(
    //                   fontSize: 20, fontWeight: FontWeight.w800)),
    //               Text(message),
    //             ],
    //           ),
    //           showCloseIcon ? IconButton(
    //             icon: const Icon(Icons.close, color: Colors.white),
    //             onPressed: () {
    //               ScaffoldMessenger.of(context).hideCurrentSnackBar();
    //             },
    //           ) : Container(color: Colors.red,)
    //         ]
    //     ),
    //   );
    //   ScaffoldMessenger.of(context).showSnackBar(snackBar);
    // }
    // else if (type == AlertType.Error) {
    //   bgr = Colors.deepOrangeAccent;
    //   icon = const Icon(Icons.check, color: Colors.yellow);
    // }
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
    if (showCloseIcon) {
      Flushbar(
        title: title,
        message: message,
        icon: icon,
        backgroundColor: bgr,
        flushbarPosition: FlushbarPosition.TOP,
        borderRadius: BorderRadius.circular(20),
        margin: const EdgeInsets.all(20),
        duration: const Duration(seconds: 2),
      ).show(context);
    } else {
      flushbar = Flushbar(
        title: title,
        message: message,
        icon: icon,
        backgroundColor: bgr,
        flushbarPosition: FlushbarPosition.TOP,
        borderRadius: BorderRadius.circular(20),
        margin: const EdgeInsets.all(20),
        mainButton: TextButton(
            onPressed: () {
              flushbar!.dismiss();
            },
            child: Icon(
              Icons.clear_outlined,
              color: Colors.white,
            )),
      );
      flushbar!.show(context);
    }
  }
}
