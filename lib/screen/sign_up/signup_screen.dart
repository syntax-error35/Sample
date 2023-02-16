import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample/screen/sign_up/signup_controller.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignUpController>(
      init: SignUpController(),
      builder: (controller) {
        return Scaffold(
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 60,
                        // backgroundImage: ,
                      ),
                      Positioned(
                        bottom: 0,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(120),
                            bottomLeft: Radius.circular(
                              120,
                            ),
                          ),
                          child: Container(
                            color: Colors.white.withOpacity(0.3),
                            padding: const EdgeInsets.only(bottom: 7),
                            alignment: Alignment.bottomCenter,
                            width: 120,
                            height: 35,
                            child: InkWell(
                              child: Image.asset(
                                'assets/icons/editIcon.png',
                                width: 16,
                                height: 20,
                              ),
                              onTap: () {
                                // controller.takeImage();
                              },
                            ),
                          ),
                        ),
                      ), // add image picker
                    ],
                  ),
                  const SizedBox(height: 15),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomTextField(
                        labelText: 'Full Name',
                        keyType: TextInputType.text,
                        inputController: controller.nameController,
                        textFieldType: 'name',
                      ),
                      // CustomTextField(labelText: '',keyType: ,),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String textFieldType;
  final String labelText;
  final TextInputType keyType;
  Function()? onFieldTapped; // show datepicker or dropdown
  TextEditingController inputController;
  Function()? validatorFunc;
  Function()? pickImageFunc;
  CustomTextField({
    super.key,
    required this.labelText,
    required this.keyType,
    this.onFieldTapped,
    required this.inputController,
    this.validatorFunc,
    this.pickImageFunc,
    required this.textFieldType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: inputController,
      validator: (value) {

      },
      decoration: InputDecoration(
        label: Text(labelText),
        // border: OutlineInputBorder(
        //   borderSide: BorderSide(
        //     color: Colors.black,
        //     width: 1.5,
        //   ),
        // ),
        labelStyle: const TextStyle(color: Colors.black),
      ),
    );
  }
}
