import 'package:get/get.dart';

class ShowSnackbar {
  final String msg;
  ShowSnackbar(this.msg);
  showErrorSnackbar() {
    Get.snackbar(
      'title',
      msg,
      duration: const Duration(seconds: 2),
    );
  }
}
