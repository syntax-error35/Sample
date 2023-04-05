import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample/screen/meeting_minute/meeting_minutes.dart';

class MeetingMinuteListController extends GetxController{
TextEditingController meetingMinuteController = TextEditingController();
openMeetingMinute(){
  Get.to(() => MeetingMinutes());
}
}