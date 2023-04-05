import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:sample/screen/sign_up/signup_controller.dart';
import 'package:sample/widget/drawer.dart';
import 'package:sample/widget/dropdown_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignUpController>(
      init: SignUpController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Create User'),
          ),
          body: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomTextField(
                          labelText: 'Full Name',
                          keyType: TextInputType.text,
                          inputController: controller.nameController,
                          textFieldType: '',
                        ),
                        const SizedBox(height: 10),
                        CustomTextField(
                          labelText: 'Date Of Birth',
                          inputController: controller.dateOfBirth,
                          textFieldType: 'dob',
                        ),
                        const SizedBox(height: 10),
                        // dept API
                        DropDown(
                          deptMap: controller.deptListMap,
                          selector: 'Department',
                          setInputValue: (value) {
                            print(value);
                            controller.deptValue = value;
                          },
                        ),
                        const SizedBox(height: 10),
                        // deisgnation API
                        DropDown(
                          deptMap: controller.designationListMap,
                          selector: 'Designation',
                          setInputValue: (value) {
                            print(value);
                            controller.designationValue = value;
                          },
                        ),
                        const SizedBox(height: 10),
                        CustomTextField(
                          labelText: 'Organization Email Address',
                          keyType: TextInputType.emailAddress,
                          inputController: controller.emailController,
                          textFieldType: 'email',
                          validatorFunc: controller.emailValidator,
                        ),
                        const SizedBox(height: 10),
                        CustomTextField(
                          labelText: 'Phone Number',
                          keyType: TextInputType.number,
                          inputController: controller.phoneController,
                          textFieldType: '',
                        ),
                        const SizedBox(height: 10),
                        CustomTextField(
                          labelText: 'Address',
                          keyType: TextInputType.streetAddress,
                          inputController: controller.addressController,
                          textFieldType: '',
                        ),
                        const SizedBox(height: 10),
                        // image upload
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: controller.imageController,
                                decoration: const InputDecoration(
                                  labelText: 'Image File Upload',
                                  labelStyle: TextStyle(
                                    color: Colors.teal,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                controller.pickImageFile();
                              },
                              child: const Text('Upload'),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        // role dropdown
                        DropDown(
                          deptMap: controller.roleListMap,
                          selector: 'Role',
                          isManager: controller.isManager,
                          setInputValue: (value) {
                            if (value == 2) {
                              controller.managerStatusTrue();
                            } else {
                              controller.managerStatusFalse();
                            }
                            print(value);
                            controller.roleValue = value;
                          },
                        ),
                        const SizedBox(height: 10),
                        // line manager dropdown
                        DropDown(
                          deptMap: controller.lineManagerListMap,
                          selector: 'Select A Line Manager',
                          isManager: controller.isManager,
                          setInputValue: (value) {
                            print(value);
                            controller.lineManagerValue = value;
                          },
                        ),
                        const SizedBox(height: 10),
                        CustomTextField(
                          labelText: 'Password',
                          keyType: TextInputType.visiblePassword,
                          inputController: controller.passController,
                          textFieldType: 'pass',
                          validatorFunc: controller.passValidator,
                        ),
                        const SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () {
                            controller.submitResponseAndCreateUser();
                          },
                          child: const Text('Submit For Approval'),
                        ),
                      ],
                    ),
                  ],
                ),
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
  final TextInputType? keyType;
  Function? onFieldTapped; // show datepicker or dropdown
  TextEditingController inputController;
  Function? validatorFunc;
  Function()? pickImageFunc;
  CustomTextField({
    super.key,
    required this.labelText,
    this.keyType,
    this.onFieldTapped,
    required this.inputController,
    this.validatorFunc,
    this.pickImageFunc,
    required this.textFieldType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyType,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: inputController,
      validator: (value) {
        return textFieldType == 'email'
            ? validatorFunc!(value)
            : textFieldType == 'pass'
                ? validatorFunc!(value)
                : null;
      },
      decoration: InputDecoration(
        label: Text(
          labelText,
          style: const TextStyle(color: Colors.teal, fontSize: 14),
        ),
        labelStyle: const TextStyle(color: Colors.black),
      ),
      onTap: () async {
        if (textFieldType == 'dob') {
          DateTime? dateOfBirth = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1950),
            lastDate: DateTime.now(),
          );
          inputController.text = DateFormat.yMMMMd().format(dateOfBirth!);
        } else if (textFieldType != 'email' &&
            textFieldType != 'pass' &&
            textFieldType.isNotEmpty) {
          print('dropdown pressed');
          onFieldTapped!();
          // DropDown(onFieldTapped);
        } else {
          return;
        }
      },
    );
  }
}
