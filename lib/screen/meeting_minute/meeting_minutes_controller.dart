import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample/screen/meeting_minute/edit_meeting_minutes.dart';

class MeetingMinutesController extends GetxController {
  openEditPage() {
    Get.to(() => EditMeetingMinutes());
  }

  openDeleteDialogue(BuildContext ctx) {
    showDialog(
        context: ctx,
        builder: (_) {
          return AlertDialog(
            //shape: ,
            title: const Text(
              'Warning',
              style: TextStyle(fontWeight: FontWeight.bold, ),
              textAlign: TextAlign.center,
            ),
            content: const Text(
              'This event will be deleted permanently. Do you wish to proceed?',
              softWrap: true,
              textAlign: TextAlign.center,
            ),
            actionsAlignment: MainAxisAlignment.spaceBetween,
            actions: [
              TextButton(
                onPressed: () {},
                child: const Text('No'),
                style: ButtonStyle(
                  foregroundColor: MaterialStatePropertyAll(Colors.lightBlue),
                  backgroundColor: MaterialStatePropertyAll(Colors.white),
                ),
              ),
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  foregroundColor: MaterialStatePropertyAll(Colors.lightBlue),
                  backgroundColor: MaterialStatePropertyAll(Colors.white),
                ),
                child: const Text('Yes'),
              ),

            ],
            // actionsPadding: ,
          );
        });
  }
}
