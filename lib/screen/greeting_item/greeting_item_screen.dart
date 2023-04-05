import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample/screen/greeting_item/greeting_item_controller.dart';
import 'package:sample/widget/custom_background.dart';
import 'package:sample/widget/custom_search_bar.dart';

class GreetingItemScreen extends StatelessWidget {
  GreetingItemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Widget listViewItems =
    return GetBuilder<GreetingItemController>(
      init: GreetingItemController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Greeting items'),
          ),
          body: CustomBackground(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 8,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: CustomSearchBar(searchController: controller.greetingController),
                  ),
                  Expanded(
                    child:  ListView.builder(
                      itemBuilder: (ctx, index) {
                        return customListTile(index, controller.dataList[index]);
                      },
                      itemCount: controller.dataList.length,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget customListTile(
    int index,
    Map<String,dynamic> dataList,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          color: Colors.white,
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 16,
            ),
            style: ListTileStyle.drawer,
            tileColor: Colors.white,
            title: Text(dataList['title'] ?? 'Title'),
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                dataList['image'] ?? '',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
