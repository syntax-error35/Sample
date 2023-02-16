import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample/screen/login/login_controller.dart';

class LogInScreen extends StatelessWidget {
   LogInScreen({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (controller) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Form(
                  key: formKey,
                  child: Column(
                    //mainAxisSize: MainAxisSize.min,
                    children: [
                      TextFormField(
                        controller : controller.emailController,
                        decoration: const InputDecoration(
                          hintText: 'Email',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                           if(controller.emailValidator(value!)){
                             controller.emailValidated = true;
                            return null;
                          } else {
                            // controller.emailValidated = false;
                            return 'Invalid Email';
                          }
                        //  return controller.emailFieldValidator(value);
                        },
                      ),
                      TextFormField(
                        controller: controller.passController,
                        decoration: const InputDecoration(
                          hintText: 'Password',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          //return controller.passFieldValidator(value);
                         String str = controller.passValidator(value!);
                        if(str != 'null'){
                          return str;
                        }
                        else{
                          controller.passValidated = true;
                          return null;
                        }
                        },
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          print('pass Validation Status ${controller.passValidated}');
                          print('email Validation Status ${controller.emailValidated}');
                          if(formKey.currentState!.validate()){
                            formKey.currentState!.save();
                            controller.submitAndValidate();
                          }
                         else{
                           print('form not validated');
                          }
                         // controller.submitLogIn(mail: email, pass: password);
                        },
                        child: const Text('Login'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
