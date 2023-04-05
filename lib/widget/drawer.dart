import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:sample/screen/home/home_controller.dart';

class BatDrawer extends StatelessWidget {
  BatDrawer({Key? key}) : super(key: key);
  final List<String> userList = [
    'Admin',
    'Line Manager',
    'Manager',
    'Moderators',
    'Greetings Manager'
  ];
  final List<String> settingsList = [
    'Department',
    'Role',
    'Permission',
    'Additional Field',
    'Reminder Option',
    'Common Settings',
    'Designations',
    'Meeting Type',
    'Stakeholder Category',
    'University',
    'Ministry',
    'Bcs batch',
  ];
  final List<String> reportList = [
    'Engagement Breakdown',
    'Engagement Comparison',
  ];

  List<DropdownMenuItem> buildDropdownMenuItems(List<String> inputList) {
    List<DropdownMenuItem> outputList = [];
    for (int i = 0; i < inputList.length; i++) {
      var singleItem = DropdownMenuItem(
        value: inputList[i],
        child: Text(inputList[i]),
        onTap: () {},
      );
      outputList.add(singleItem);
    }
    return outputList;
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: HomeController(),
      builder: (controller) {
        return Drawer(
          backgroundColor: Colors.teal,
          child: Column(
            children: [
              const DrawerHeader(
                child: Align(
                  alignment: Alignment.center,
                  child: Image(
                    image: AssetImage('assets/ic_explorer.png'),
                  ),
                ),
              ),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          customListTile(
                            titleText: 'Meeting Calendar',
                            onTappingTheTile: controller.updateHomeBody,
                            leadingWidget: const Icon(
                              FeatherIcons.calendar,
                            ),
                            updateFunc: controller.update,
                            closeDrawer: controller.closeDrawer,
                          ),
                          customListTile(
                            titleText: 'Meeting Minutes',
                            onTappingTheTile: controller.goToPage,
                            leadingWidget: const Icon(
                              FeatherIcons.clock,
                            ),
                            updateFunc: controller.update,
                            closeDrawer: controller.closeDrawer,
                          ),
                          customListTile(
                            titleText: 'Corporate Greetings',
                            onTappingTheTile: controller.goToPage,
                            leadingWidget: const Icon(
                              FeatherIcons.archive,
                            ),
                            updateFunc: controller.update,
                            closeDrawer: controller.closeDrawer,
                          ),
                          customListTile(
                            titleText: 'Greeting items',
                            onTappingTheTile: controller.goToPage,
                            leadingWidget: const Icon(
                              FeatherIcons.archive,
                            ),
                            updateFunc: controller.update,
                            closeDrawer: controller.closeDrawer,
                          ),
                        ],
                      ),
                    ),
                   // const Spacer(),
                    customListTile(
                        leadingWidget: const Icon(FeatherIcons.logOut),
                        titleText: 'LOG OUT',
                        onTappingTheTile: () {
                          /// TODO : IMPLEMENT LOG OUT
                        }),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget customListTile(
      {required String titleText,
      Icon? leadingWidget,
      required Function onTappingTheTile,
      Function? closeDrawer,
      Function? updateFunc}) {
    return ListTile(
      leading: leadingWidget,
      style: ListTileStyle.drawer,
      title: Text(
        titleText,
        style: const TextStyle(),
      ),
      selectedColor: Colors.blueAccent,
      iconColor: Colors.white,
      textColor: Colors.white,
      hoverColor: Colors.blue,
      onTap: () {
        onTappingTheTile(titleText);
        // closeDrawer!();
        // updateFunc!();
      },
    );
  }

  // Widget customExpansionListTile({
  //   required Icon customLeadingIcon,
  //   required String dropDownName,
  //   required List<String> dropDownList,
  //   required Function onTappingTheTile,
  //   required Function closeDrawer,
  //   required Function updateFunc,
  // }) {
  //   List<Widget> customListTileList = [];
  //   for (int i = 0; i < dropDownList.length; i++) {
  //     customListTileList.add(customListTile(
  //         dropDownList[i], null, onTappingTheTile, closeDrawer, updateFunc));
  //   }
  //   return ExpansionTile(
  //     title: Text(
  //       dropDownName,
  //       style: const TextStyle(color: Colors.white),
  //     ),
  //     leading: customLeadingIcon,
  //     iconColor: Colors.white,
  //     collapsedIconColor: Colors.white,
  //     children: customListTileList,
  //   );
  // }
}
