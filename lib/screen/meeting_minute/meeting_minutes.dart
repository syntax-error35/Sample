import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:sample/screen/meeting_minute/meeting_minutes_controller.dart';
import 'package:sample/widget/custom_background.dart';

class MeetingMinutes extends StatelessWidget {
  // const ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: MeetingMinutesController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Meeting Minutes'),
          ),
          body: CustomBackground(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text('Test'),
                            Text('date'),
                            Text('time'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          //mainAxisSize: MainAxisSize.min,
                          children: [
                            CircleAvatar(
                              //backgroundColor: ,
                              child: IconButton(
                                onPressed: () {
                                  controller.openEditPage();
                                },
                                icon: const Icon(Icons.edit_outlined),
                              ),
                            ),
                            CircleAvatar(
                              child: IconButton(
                                  onPressed: () {
                                    controller.openDeleteDialogue(context);
                                  },
                                  icon: const Icon(Icons.delete_outline)),
                            )
                          ],
                        )
                      ],
                    ),
                    Text('Subject', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
                    Text('Testing event',style: TextStyle(color: Colors.grey)),
                    Text('Attendees', style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold)),
                    Text('Testing event',style: TextStyle(color: Colors.grey)),
                    Text('Place of meeting', style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold)),
                    Text('Testing event',style: TextStyle(color: Colors.grey)),
                    Text('Action Point', style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold)),
                    Text('Testing event',style: TextStyle(color: Colors.grey)),
                    Text('Follow Up', style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold)),
                    Text('Testing event',style: TextStyle(color: Colors.grey)),
                    Text('Description', style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold)),
                    Text('Testing event',style: TextStyle(color: Colors.grey)),
                    Text('Special Request/Notes', style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold)),
                    Text('Testing event',style: TextStyle(color: Colors.grey)),

                  ],
                ),
              ),
            ),
          ),
        );
      }
    );
  }
}
