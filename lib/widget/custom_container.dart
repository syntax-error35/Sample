import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
   TextEditingController controller = TextEditingController();
   CustomContainer({
    Key? key,
  //  required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
      ),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: TextFormField(
            decoration: InputDecoration(
              disabledBorder: InputBorder.none,
            ),
            controller: controller,
          ),
        ),
      ),
    );
  }
}
