import 'package:flutter/material.dart';

class CustomExtendedContainer extends StatelessWidget {
  const CustomExtendedContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0,),
      child: Container(
        height: 100,
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
