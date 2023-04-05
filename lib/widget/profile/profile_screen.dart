import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'edit_profile_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .10,
            width: MediaQuery.of(context).size.height * .10,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: const Icon(
              Icons.person,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {
                Get.to(() => const EditProfileScreen());
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.edit_outlined),
                  Text('Edit'),
                ],
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * .57,
            width: MediaQuery.of(context).size.width * .80,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Table(
              border: TableBorder.all(color: Colors.grey, width: .5),
              columnWidths: {
                0: FixedColumnWidth(MediaQuery.of(context).size.width * .30),
                1: FixedColumnWidth(MediaQuery.of(context).size.width * .50),
              },
              children:
                  //ListView.builder(itemBuilder: itemBuilder)
                  [
                TableRow(
                  decoration:
                      BoxDecoration(color: Colors.grey.withOpacity(0.4)),
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * .57 / 8,
                      alignment: Alignment.center,
                      child: const Text('Full name'),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * .57 / 8,
                      alignment: Alignment.center,
                      child: const Text('Dev manager'),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * .57 / 8,
                      alignment: Alignment.center,
                      child: Text('Email'),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * .57 / 8,
                      alignment: Alignment.center,
                      child: Text('jdhfbbjsdhbb'),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      height: MediaQuery.of(context).size.height * .57 / 8,
                      alignment: Alignment.center,
                      child: const Text('Designation'),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * .57 / 8,
                      alignment: Alignment.center,
                      child: const Text('jdhfbbjsdhbb'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
