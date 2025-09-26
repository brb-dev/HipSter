import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../presentation/core/theme/app_color.dart';

class DialogUtil {
  static void showLoadingDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return CupertinoAlertDialog(
          content: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                width: 50,
                height: 50,
                child: CircularProgressIndicator(color: AppColor.black),
              ),
            ],
          ),
        );
      },
    );
  }
}
