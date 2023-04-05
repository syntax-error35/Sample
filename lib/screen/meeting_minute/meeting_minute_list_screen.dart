import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/screen/meeting_minute/meeting_minute_list_controller.dart';
import 'package:sample/widget/custom_background.dart';
import 'package:sample/widget/custom_search_bar.dart';
import 'package:get/get.dart';

class MeetingMinuteListScreen extends StatelessWidget {
  const MeetingMinuteListScreen({Key? key}) : super(key: key);

  Widget customDatePicker(BuildContext ctx) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          /// TODO : open cupertino date picker
          print('inkwell tapped');

        },
        child: Container(
          width: MediaQuery.of(ctx).size.width/3,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8)
          ),

          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children:  [
                Text('date today'),
                Icon(Icons.calendar_today_outlined),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget customListTile(Function() openFunc) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
          child: ListTile(
            onTap: (){
              openFunc();
            },
            contentPadding: EdgeInsets.all(10),
            title:  Text('Test'),
            subtitle:  Text('date today'),
            trailing: Column(
              children:  [
               const Icon(Icons.play_arrow, color: Colors.lightBlue,),
                Text('Pending'),
              ],
            ),
          ),
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: MeetingMinuteListController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(title: const Text('Meeting Minute List'),),
            body: CustomBackground(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8 ),
            child: Column(
              children: [
                CustomSearchBar(searchController: TextEditingController()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Start date', style: TextStyle(color: Colors.white),),
                        ),
                        customDatePicker(context),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('End date', style: TextStyle(color: Colors.white)),
                        ),
                        customDatePicker(context),
                      ],
                    ),
                  ],
                ),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (ctx, index) {
                      return customListTile(controller.openMeetingMinute);
                    },
                    itemCount: 20,
                  ),
                )
              ],
            ),
          ),
        ));
      }
    );
  }
}
