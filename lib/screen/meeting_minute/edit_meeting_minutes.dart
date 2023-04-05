import 'package:flutter/material.dart';
import 'package:sample/widget/custom_background.dart';
import 'package:sample/widget/custom_container.dart';
import 'package:sample/widget/custom_datepicker_container/custom_datepicker_container.dart';
import 'package:sample/widget/custom_ext_container.dart';

enum Status { yes, no }

class EditMeetingMinutes extends StatelessWidget {
  const EditMeetingMinutes({Key? key}) : super(key: key);

  Widget customRemoveButton() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Align(
        alignment: Alignment.centerRight,
        child: TextButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            ),
          ),
          onPressed: () {},
          child: const Text('Remove'),
        ),
      ),
    );
  }

  Widget customAddButton(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Align(
        alignment: Alignment.centerRight,
        child: TextButton(
          style: ButtonStyle(
            fixedSize:
                MaterialStateProperty.all(const Size(double.infinity, 40)),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            ),
          ),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.add),
              Text(text),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meeting Minutes'),
      ),
      body: CustomBackground(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Subject',
                  style: TextStyle(color: Colors.white),
                ),
                CustomContainer(),
                const Text(
                  'Attendees',
                  style: TextStyle(color: Colors.white),
                ),
                CustomContainer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    children: [
                      const Text(
                        'Action Point',
                        style: TextStyle(color: Colors.white),
                      ),
                      Expanded(
                        child: RadioListTile<Status>(
                          value: Status.values[0],
                          groupValue: Status.values[0],
                          onChanged: (Status? newValue) {
                            print('selected Value $newValue');
                          },
                          title: const Text(
                            'Yes',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Expanded(
                        child: RadioListTile<Status>(
                          value: Status.values[1],
                          groupValue: Status.values[0],
                          onChanged: (Status? newValue) {
                            print('selected Value $newValue');
                          },
                          title: const Text(
                            'No',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                customRemoveButton(),
                const Text(
                  'Action Point',
                  style: TextStyle(color: Colors.white),
                ),
                const CustomExtendedContainer(),
                const Text(
                  'Date',
                  style: TextStyle(color: Colors.white),
                ),
                const CustomDatePickerContainer(
                  Width: double.infinity,
                  hint: 'Date',
                ),
                customRemoveButton(),
                const Text(
                  'Action Point',
                  style: TextStyle(color: Colors.white),
                ),
                const CustomExtendedContainer(),
                const Text(
                  'Date',
                  style: TextStyle(color: Colors.white),
                ),
                const CustomDatePickerContainer(
                  Width: double.infinity,
                  hint: 'Date',
                ),
                customAddButton('  Add action point'),
                const Text(
                  'Agenda',
                  style: TextStyle(color: Colors.white),
                ),
                CustomContainer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'Date',
                          style: TextStyle(color: Colors.white),
                        ),
                        Flexible(
                          child: CustomDatePickerContainer(
                            Width: MediaQuery.of(context).size.width * 0.4,
                            hint: 'Date',
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'Time',
                          style: TextStyle(color: Colors.white),
                        ),
                        Flexible(
                          child: CustomDatePickerContainer(
                            Width: MediaQuery.of(context).size.width * 0.4,
                            hint: 'Date',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Text(
                  'Place of meeting',
                  style: TextStyle(color: Colors.white),
                ),
                CustomContainer(),
                const Text(
                  'Description',
                  style: TextStyle(color: Colors.white),
                ),
                 CustomExtendedContainer(),
                const Text(
                  'Follow up (if any)',
                  style: TextStyle(color: Colors.white),
                ),
                CustomContainer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    children: [
                      const Text(
                        'Special request',
                        style: TextStyle(color: Colors.white),
                      ),
                      Flexible(
                        child: RadioListTile<Status>(
                          value: Status.values[0],
                          groupValue: Status.values[0],
                          onChanged: (Status? newValue) {
                            print('selected Value $newValue');
                          },
                          title: const Text(
                            'Yes',
                            style: TextStyle(color: Colors.white),
                          ),
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 10),
                        ),
                      ),
                      Flexible(
                        child: RadioListTile<Status>(
                          value: Status.values[1],
                          groupValue: Status.values[0],
                          onChanged: (Status? newValue) {
                            print('selected Value $newValue');
                          },
                          title: const Text(
                            'No',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  'Special request',
                  style: TextStyle(color: Colors.white),
                ),
                CustomContainer(),
                const Text(
                  'Date',
                  style: TextStyle(color: Colors.white),
                ),
                const CustomDatePickerContainer(
                  Width: double.infinity,
                  hint: 'Date',
                ),
                customAddButton('  Add a field'),
                Align(
                  child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                      fixedSize: MaterialStateProperty.all(
                          Size(MediaQuery.of(context).size.width * 0.4, 40)),
                    ),
                    child: const Text('Submit'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
