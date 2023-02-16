import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:sample/error%20handling/handle_error.dart';

class SignUpController extends GetxController with HandleError {
  TextEditingController nameController = TextEditingController();
  TextEditingController dateOfBirth = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController imageController = TextEditingController();
  bool nameValidated = false;
  bool emailValidated = false;
  bool passValidated = false;

  String? nameFieldValidator(String val) {
    if (GetUtils.isAlphabetOnly(val)) {
      nameValidated = true;
      return '';
    } else {
      return 'letters only, no number';
    }
  }

  String passValidator(String value) {
    if (!GetUtils.hasCapitalletter(value)) {
      return '- A mix of uppercase & lowercase characters';
    } else if (GetUtils.isAlphabetOnly(value)) {
      return '- At least one number';
    } else if (!(GetUtils.isAlphabetOnly(value) ||
        GetUtils.isNumericOnly(value))) {
      return '- At least one special character';
    } else if (GetUtils.isLengthLessThan(value, 8)) {
      return '- At least 8 characters';
    } else {
      passValidated = true;
      return 'null';
    }
  }

  String? emailValidator(String value) {
    if (GetUtils.isEmail(value) && value.contains('@bat')) {
      emailValidated = true;
      return null;
    } else {
      return 'Invalid Email';
    }
  }

}
