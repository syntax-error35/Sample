import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample/screen/corporate_greetings/corporate_greetings_controller.dart';
import 'package:sample/widget/custom_background.dart';
import 'package:sample/widget/custom_search_bar.dart';

class CorporateGreetingScreen extends StatelessWidget {
  CorporateGreetingScreen({Key? key}) : super(key: key);
  final TextEditingController inpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CorporateGreetingsController>(
      init: CorporateGreetingsController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Corporate Greetings'),
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
                    child: CustomSearchBar(searchController: inpController),
                  ),
                  Expanded(
                    child: ListView.builder(
                        itemBuilder: (ctx, index) {
                          return customListTile(
                            index,
                          );
                        },
                        itemCount: 20
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
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Jewel test',
                        style: TextStyle(color: Colors.lightBlue),
                      ),
                      Text(' Pending'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Time, Date'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Stakeholder'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Manager'),
                      TextButton(
                        onPressed: () {
                          //showDialog(context: context, builder: builder)
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.green),
                       
                        ),
                        child: const Text(
                          'Approve',
                          softWrap: true,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
