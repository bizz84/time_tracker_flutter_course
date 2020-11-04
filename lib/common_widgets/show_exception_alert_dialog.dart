import 'package:flutter/material.dart';
import 'package:time_tracker_flutter_course/common_widgets/show_alert_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<void> showExceptionAlertDialog(
  BuildContext context, {
  @required String title,
  @required dynamic exception,
}) =>
    showAlertDialog(
      context,
      title: title,
      content: _message(exception),
      defaultActionText: 'OK',
    );

String _message(Exception exception) {
  if (exception is FirebaseException) {
    return exception.message;
  }
  return exception.toString();
}

// TODO: Revisit this
// NOTE: The full list of FirebaseAuth errors is stored here:
// https://github.com/firebase/firebase-ios-sdk/blob/2e77efd786e4895d50c3788371ec15980c729053/Firebase/Auth/Source/FIRAuthErrorUtils.m
// These are just the most relevant for email & password sign in:
// Map<String, String> _errors = {
//   'ERROR_WEAK_PASSWORD': 'The password must be 8 characters long or more.',
//   'ERROR_INVALID_CREDENTIAL': 'The email address is badly formatted.',
//   'ERROR_EMAIL_ALREADY_IN_USE':
//       'The email address is already registered. Sign in instead?',
//   'ERROR_INVALID_EMAIL': 'The email address is badly formatted.',
//   'ERROR_WRONG_PASSWORD': 'The password is incorrect. Please try again.',
//   'ERROR_USER_NOT_FOUND':
//       'The email address is not registered. Need an account?',
//   'ERROR_TOO_MANY_REQUESTS':
//       'We have blocked all requests from this device due to unusual activity. Try again later.',
//   'ERROR_OPERATION_NOT_ALLOWED':
//       'This sign in method is not allowed. Please contact support.',
// };
