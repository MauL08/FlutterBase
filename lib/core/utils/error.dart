import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutterbase/components/toast.dart';
import 'package:flutterbase/core/class/exception_class.dart';
import 'package:flutterbase/core/utils/response.dart';

class ErrorHelper {
  static handleErrorWithView(
    BuildContext context,
    dynamic error,
  ) {
    switch (error.runtimeType) {
      case ExceptionClass:
        String cause = (error as ExceptionClass).cause;
        if (cause == ExceptionClass.cache) {
        } else if (cause == ExceptionClass.network) {
        } else if (cause == ExceptionClass.networkMin1) {
          showToast(text: "Error", state: ToastStates.ERROR);
        } else if (cause == ExceptionClass.networkMin2) {
          showToast(text: "Error", state: ToastStates.ERROR);
        } else if (cause == ExceptionClass.networkMin3) {
          showToast(text: "Error", state: ToastStates.ERROR);
        } else if (cause == ExceptionClass.networkMin4) {
          showToast(text: "Error", state: ToastStates.ERROR);
        } else if (cause == ExceptionClass.networkMin5) {
          showToast(text: "Error", state: ToastStates.ERROR);
        } else if (cause == ExceptionClass.networkMin6) {
          showToast(text: "Error", state: ToastStates.ERROR);
        } else if (cause == ExceptionClass.networkMin7) {
          showToast(text: "Error", state: ToastStates.ERROR);
        } else if (cause == ExceptionClass.networkMin8) {
          showToast(text: "Error", state: ToastStates.ERROR);
        } else if (cause == ExceptionClass.networkMin9) {
          showToast(text: "Error", state: ToastStates.ERROR);
        } else if (cause == ExceptionClass.networkMin10) {
          showToast(text: "Error", state: ToastStates.ERROR);
        } else if (cause == ExceptionClass.networkMin11) {
          showToast(text: "Error", state: ToastStates.ERROR);
        } else if (cause == ExceptionClass.input) {
          showToast(text: "Error", state: ToastStates.ERROR);
        } else {
          showToast(text: "Error", state: ToastStates.ERROR);
        }
        return;

      case DioException:
        var cause = (error as DioException).response;

        if (cause!.statusCode == RESPONSE_BAD_REQUEST) {
          showToast(text: cause.data['message'], state: ToastStates.ERROR);
        } else if (cause.statusCode == RESPONSE_UNAUTHORIZED) {
          showToast(text: cause.data['message'], state: ToastStates.ERROR);
        } else if (cause.statusCode == RESPONSE_FORBIDDEN_ACCESS) {
          showToast(text: cause.data['message'], state: ToastStates.ERROR);
        } else if (cause.statusCode == RESPONSE_NOT_FOUND) {
          showToast(text: cause.data['message'], state: ToastStates.ERROR);
        } else if (cause.statusCode == RESPONSE_VALIDATION) {
          showToast(text: cause.data['message'], state: ToastStates.ERROR);
        } else if (cause.statusCode == RESPONSE_SERVER_ERROR) {
          showToast(text: cause.data['message'], state: ToastStates.ERROR);
        }
    }
  }

  static checkErrorFromNetworkCode(String? code, {String? message}) {
    switch (code) {
      case "-1":
        throw ExceptionClass(ExceptionClass.networkMin1, message: message);
      case "-2":
        throw ExceptionClass(ExceptionClass.networkMin2, message: message);
      case "-3":
        throw ExceptionClass(ExceptionClass.networkMin3, message: message);
      case "-4":
        throw ExceptionClass(ExceptionClass.networkMin4, message: message);
      case "-5":
        throw ExceptionClass(ExceptionClass.networkMin5, message: message);
      case "-6":
        throw ExceptionClass(ExceptionClass.networkMin6, message: message);
      case "-7":
        throw ExceptionClass(ExceptionClass.networkMin7, message: message);
      case "-8":
        throw ExceptionClass(ExceptionClass.networkMin8, message: message);
      case "-9":
        throw ExceptionClass(ExceptionClass.networkMin9, message: message);
      case "-10":
        throw ExceptionClass(ExceptionClass.networkMin10, message: message);
      case "-11":
        throw ExceptionClass(ExceptionClass.networkMin11, message: message);
      default:
    }
  }
}
