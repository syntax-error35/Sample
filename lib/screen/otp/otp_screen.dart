import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample/screen/otp/otp_controller.dart';

class OtpScreen extends StatelessWidget {
  final String? authToken;
  OtpScreen(this.authToken, {super.key});
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    String num1;
    String num2;
    String num3;
    String num4;

    return GetBuilder<OtpController>(
      init: OtpController(),
      builder: (controller) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Verify OTP',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
                ),
                const SizedBox(height: 25),
                SizedBox(
                  child: Form(
                    key: formKey,
                    child: Row(
                      children: [
                        TextFieldWidget(controller.num1),
                        const SizedBox(width: 15),
                        TextFieldWidget(controller.num2),
                        const SizedBox(width: 15),
                        TextFieldWidget(controller.num3),
                        const SizedBox(width: 15),
                        TextFieldWidget(controller.num4),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      controller.authToken = authToken!;
                      controller.otpVerify(
                          '${controller.num1.text}${controller.num2.text}${controller.num3.text}${controller.num4.text}');
                    }
                    else{
                      print('form not validated');
                    }
                  },
                  child: const Text('Verify'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class TextFieldWidget extends StatelessWidget {
  TextEditingController numberInput;
  TextFieldWidget(this.numberInput, {super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      child: TextFormField(
        controller: numberInput,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.black,
              width: 1,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Colors.teal,
              width: 1,
            ),
          ),
        ),
      ),
    );
  }
}
