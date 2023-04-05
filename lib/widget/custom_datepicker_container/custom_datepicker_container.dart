import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample/widget/custom_datepicker_container/custom_datepicker_controller.dart';

class CustomDatePickerContainer extends StatelessWidget {
  final double Width;
  final String hint;
  const CustomDatePickerContainer(
      {
    Key? key,
    required this.Width,
    required this.hint,
  }
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CustomDateTimePickerController>(
      init: CustomDateTimePickerController(),
      builder: (controller) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8.0,
          ),
          child: InkWell(
            child: Container(
              width: Width,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextFormField(
                        decoration: InputDecoration(hintText: hint),
                        controller:   hint.contains('End') ? controller.endController  : controller.startController,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Icon(Icons.calendar_today_outlined),
                  ),
                ],
                //
              ),
            ),
            onTap: () {
              if (hint.contains('Start')) {
                controller.showStartDatePicker(context);
              } else {
                controller.showEndDatePicker(context);
              }
            },
          ),
        );
      },
    );
  }
}
