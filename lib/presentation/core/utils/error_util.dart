import 'package:flutter/material.dart';
import 'package:hipstermeet/domain/core/error/api_failure.dart';
import 'package:hipstermeet/presentation/core/widgets/snackbar/snackbar_util.dart';

class ErrorUtils {
  static void handleApiFailure(BuildContext context, ApiFailure failure) {
    final failureMessage = failure.failureMessage;
    SnackbarUtil.showErrorSnackbar(context, failureMessage);
  }
}
