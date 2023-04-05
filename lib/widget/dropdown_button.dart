import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DropDown extends StatelessWidget {
  //TextEditingController inputController;
  Function(dynamic) setInputValue;
  // Function() setControllerValue;
  // Function() changeStatus;
  final String selector;
  final Map<String, dynamic> deptMap;
  bool? isManager;

  DropDown({super.key,
    required this.deptMap,
    required this.selector,
    this.isManager,
    required this.setInputValue,
  });

  List<DropdownMenuItem> customDropDownMenuItem = [];
  DropdownButtonFormField? customDropdownButtonFormField;

  dropDownField() {
    print('list $deptMap');
    deptMap.forEach(
      (key, value) {
        print('key $key');
        print('value $value');
        var x = DropdownMenuItem(
          value: value,
          child: Text(key),
        );
        print(x);
        customDropDownMenuItem.add(
          x,
        );
        print('list length ${customDropDownMenuItem.length}');
        // update();
      },
    );
  }

  Widget customDropDown() {
    dropDownField();
    print('customDropDownMenuItem $customDropDownMenuItem');

    if (selector.contains('Line') && isManager == false) {
      return DropdownButtonFormField(
        hint: Text(
          selector,
          style: const TextStyle(color: Colors.teal),
        ),
        borderRadius: BorderRadius.circular(15),
        dropdownColor: Colors.white,
        style: const TextStyle(color: Colors.teal),
        items: customDropDownMenuItem,
        onChanged: null,
      );
    }

    return DropdownButtonFormField(
      hint: Text(
        selector,
        style: const TextStyle(color: Colors.teal),
      ),
      borderRadius: BorderRadius.circular(15),
      dropdownColor: Colors.white,
      style: const TextStyle(color: Colors.teal),
      items: customDropDownMenuItem,
      onChanged:  setInputValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return customDropDown();
  }
}
