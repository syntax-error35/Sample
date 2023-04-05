import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomDateTimePickerController extends GetxController {
  final TextEditingController startController = TextEditingController();
  final TextEditingController endController = TextEditingController();
  showStartDatePicker(BuildContext context) {
    showCupertinoModalPopup(
        context: context,
        builder: (_) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.40,
            margin: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            color: CupertinoColors.systemBackground.resolveFrom(context),
            child: SafeArea(
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.date,
                onDateTimeChanged: (DateTime value) {
                  startController.text = DateFormat.yMMMd().format(value).toString();
                },
                initialDateTime: DateTime.now(),
                maximumYear: 2028,
                minimumYear: 2015,
              ),
            ),
          );
        });
  }
  showEndDatePicker(BuildContext context) {
    showCupertinoModalPopup(
        context: context,
        builder: (_) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.40,
            margin: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            color: CupertinoColors.systemBackground.resolveFrom(context),
            child: SafeArea(
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.date,
                onDateTimeChanged: (DateTime value) {
                  endController.text = DateFormat.yMMMd().format(value).toString();
                },
                initialDateTime: DateTime.now(),
                maximumYear: 2028,
                minimumYear: 2015,
              ),
            ),
          );
        });
  }
  
}
