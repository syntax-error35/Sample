import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample/screen/home/home_controller.dart';

class CustomBottomNavBar extends StatelessWidget {
  // const ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: HomeController(),
      builder: (controller) {
        return BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/ic_stakeholders.png'),
              ),
              label: 'Stakeholders',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/ic_meeting_calendar.png'),
              ),
              label: 'Meeting Calendar'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          selectedItemColor: Theme.of(context).iconTheme.color,
          backgroundColor: Colors.white,
          onTap: (index){
            controller.updateIndexAndHomeScreen(index);
          },
          //type: BottomNavigationBarType.shifting,
          landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
         currentIndex: controller.currIndex,
        );
      }
    );
  }
}
