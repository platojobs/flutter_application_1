import 'package:flutter_easyloading/flutter_easyloading.dart';

class PJProgressHUD {
  static void showHud(String msg) {
    EasyLoading.show(status: msg);
  }

  static void hidHud() {
    EasyLoading.dismiss();
  }

  static void showSuccessHudDelay({required String msg, required int delay}){
    EasyLoading.showSuccess(msg, duration: Duration(seconds: delay));
  }

  static void showErrorHudDelay(String msg, int delay){
    EasyLoading.showError(msg, duration: Duration(seconds: delay));
  }
}
