import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sample/error%20handling/handle_error.dart';
import 'package:sample/model/login/login_dm.dart';
import 'package:sample/model/login/login_response_dm.dart';
import 'package:sample/screen/otp/otp_screen.dart';
import 'package:sample/service/login_service.dart';

class LoginController extends GetxController with HandleError {
  bool passValidated = false;
  bool emailValidated = false;

  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  bool emailValidator(String value) {
    if (GetUtils.isEmail(value)) {
      return true;
    } else {
      return false;
    }
  }

  String passValidator(String value) {
    if (!GetUtils.hasCapitalletter(value)) {
      return '- A mix of uppercase & lowercase characters';
    } else if (GetUtils.isAlphabetOnly(value)) {
      return '- At least one number';
    } else if (GetUtils.isAlphabetOnly(value) ||
        GetUtils.isNumericOnly(value)) {
      return '- At least one special character';
    } else if (GetUtils.isLengthLessThan(value, 8)) {
      return '- At least 8 characters';
    } else {
      //passValidated = true;
      return 'null';
    }
  }

  String emailFieldValidator(value) {
    if (emailValidator(value!)) {
      emailValidated = true;
      //update();
      return "";
    } else {
      emailValidated = false;
      // update();
      return 'Invalid Email';
    }
  }

  String passFieldValidator(value){
    String str = passValidator(value!);
    if(str != 'null'){
      return str;
    }
    else{
      passValidated = true;
      return "";
    }
  }

  submitAndValidate() {
    print(emailController.text);
    print(passController.text);

    if (emailValidated && passValidated) {
      submitLogIn();
    }
  }

  Future submitLogIn() async {
    LoginDm loginData = LoginDm(
      email: emailController.text,
      password: passController.text,
    );
    try {
      var logInResponse =
          await LoginService().logInRequest(loginData).catchError(handleError);
      update();
      if (logInResponse != null) {
        var responseData = LoginResponseDm.fromJson(logInResponse);
        if (responseData.code == 200) {
          Get.to(OtpScreen(responseData.access_token));
        }
      }
    } catch (e) {
      rethrow;
    }
  }
}
