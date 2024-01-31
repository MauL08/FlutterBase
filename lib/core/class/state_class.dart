import 'package:flutter/material.dart';
import 'package:flutterbase/core/utils/error.dart';
import 'package:get/get.dart';

class StateClass extends GetxController {
  Rx<bool> isLoading = false.obs;
  Rx<bool> isWeakLoading = false.obs;

  doFutureAndTryCatchWithView(
      BuildContext context, Future<void> Function() function) async {
    try {
      await function();
    } catch (error) {
      if (context.mounted) ErrorHelper.handleErrorWithView(context, error);
    }
  }
}
