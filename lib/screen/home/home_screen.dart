import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample/screen/home/home_controller.dart';
import 'package:sample/widget/custom_background.dart';
import 'package:sample/widget/bottom_nav_bar/custom_bottom_nav_bar.dart';
import 'package:sample/widget/drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: HomeController(),
        builder: (controller) {
          return Scaffold(
            appBar:
                AppBar(
              title: const Text(
                'Home Page',
              ),
            ),
            drawer: BatDrawer(),
            body: CustomBackground(
              child: controller.body,
            ),
            floatingActionButton: controller.currIndex == 0
                ? FloatingActionButton(
                    backgroundColor: Colors.green.shade800,
                    child: const Icon(Icons.add),
                    onPressed: () {},
            )
                : null,
            bottomNavigationBar: CustomBottomNavBar(),
          );
        });
  }
}
