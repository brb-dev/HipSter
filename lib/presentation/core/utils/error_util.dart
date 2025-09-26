import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hipstermeet/application/auth/auth_bloc.dart';
import 'package:hipstermeet/domain/core/error/api_failure.dart';
import 'package:hipstermeet/presentation/core/widgets/snackbar/snackbar_util.dart';

class ErrorUtils {
  static void handleApiFailure(BuildContext context, ApiFailure failure) {
    final isTokenExpiredFailure = failure == const ApiFailure.tokenExpired();
    final failureMessage = failure.failureMessage;
    SnackbarUtil.showErrorSnackbar(context, failureMessage);
    if (isTokenExpiredFailure) {
      context.read<AuthBloc>().add(const AuthEvent.logout());
    }
  }
}
