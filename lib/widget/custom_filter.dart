import 'package:flutter/material.dart';
import 'package:get/get.dart';

////// Get CONTROLLER /////////

enum StakeholderStatus {
  all,
  veryImportant,
  important,
  normal,
}
/// TODO : implement filter

class CustomFilter extends StatelessWidget {
  const CustomFilter({Key? key}) : super(key: key);
  final tileValue = StakeholderStatus.all;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showDialog(
            context: context,
            builder: (ctx) {
              return AlertDialog(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Filter',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.lightBlue,
                      radius: 15,
                      child: IconButton(
                        onPressed: () {

                          // get controller

                        },
                        icon: const Icon(
                          Icons.close,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    ),
                  ],
                ),
                content: ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (ctx, index) {
                    return customRadioListTile(index);
                  },
                  itemCount: 4,
                ),
                actions: [
                  TextButton(
                    style: const ButtonStyle(
                        fixedSize: MaterialStatePropertyAll(Size(20, 15))),
                    onPressed: () {},
                    child: const Text('Apply'),
                  )
                ],
                actionsAlignment: MainAxisAlignment.center,
                // buttonPadding: const EdgeInsets.only(bottom: 20),
              );
            });
      },
      icon: const Icon(
        Icons.filter_alt_rounded,
        //color: Colors.blue,
      ),
    );
  }

  Widget customRadioListTile(int index) {
    List<String> enumValString = [
      'All',
      'Very Important',
      'Important',
      'Normal',
    ];
    return RadioListTile<StakeholderStatus>(
      value: StakeholderStatus.values[index],
      groupValue: tileValue,
      onChanged: (StakeholderStatus? newValue) {
        print('selected Value $newValue');
      },
      title: Text(enumValString[index]),
    );
  }
}
