import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample/widget/profile/profile_controller.dart';

import '../custom_background.dart';
import '../custom_container.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Edit profile'),
      ),
      body: CustomBackground(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Name',
                  style: TextStyle(color: Colors.white),
                ),
                 CustomContainer(),
                const Text(
                  'Email',
                  style: TextStyle(color: Colors.white),
                ),
                 CustomContainer(),
                const Text(
                  'Phone Number',
                  style: TextStyle(color: Colors.white),
                ),
                 CustomContainer(),
                const Text(
                  'Date of birth',
                  style: TextStyle(color: Colors.white),
                ),
                 CustomContainer(),
                const Text(
                  'Department',
                  style: TextStyle(color: Colors.white),
                ),
                 CustomContainer(),
                const Text(
                  'Designation',
                  style: TextStyle(color: Colors.white),
                ),
                 CustomContainer(),
                const Text(
                  'Address',
                  style: TextStyle(color: Colors.white),
                ),
                 CustomContainer(),
                Align(
                  child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.orange),
                      fixedSize: MaterialStateProperty.all(
                          Size(MediaQuery.of(context).size.width * 0.4, 40)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.camera_alt_outlined),
                        Text('  Upload Photo')
                      ],
                    ),
                  ),
                ),
                Align(
                  child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      //backgroundColor: MaterialStateProperty.all(Colors.),
                      fixedSize: MaterialStateProperty.all(
                          Size(MediaQuery.of(context).size.width * 0.4, 40)),
                    ),
                    child: const Text('Save'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );;
  }
}
