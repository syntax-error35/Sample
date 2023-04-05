import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample/screen/corporate_greetings/corporate_greetings_screen.dart';
import 'package:sample/screen/meeting_minute/meeting_minute_list_screen.dart';
import 'package:sample/widget/meeting_calendar/meeting_calendar.dart';
import 'package:sample/widget/profile/profile_screen.dart';
import 'package:sample/widget/stakeholder_list/stakeholder_list.dart';
import '../greeting_item/greeting_item_screen.dart';

class HomeController extends GetxController {
  int currIndex = 0;
  TextEditingController menuTitle = TextEditingController();
  String? centerText;
  bool isStakeholderPage = false;
  Widget? body;

  updateCenterText(String value) {
    centerText = value;
  }

  updateIndexAndHomeScreen(int index) {
    currIndex = index;
    index == 0
        ? body = StakeholderList()
        : index == 1
            ? body = MeetingCalendar()
            : body =  const ProfileScreen();
    update();
  }

  updateHomeBody(String value) {
    if (value.contains('Minutes')) {
      body = const MeetingMinuteListScreen();
    }
    updateCenterText(value);
    body = Center(
      child: Text(
        centerText ?? 'Select center text',
      ),
    );
  }

  goToPage(String value) {
    if (value.contains('items')) {
      Get.to(() => GreetingItemScreen());
    } else if (value.contains('Corporate')) {
      Get.to(() => CorporateGreetingScreen());
    } else if (value.contains('Minutes')) {
      Get.to(() => const MeetingMinuteListScreen());
    }
  }
openCreateStakeholderPage(){

}
  closeDrawer() {
    Get.back();
  }
}
