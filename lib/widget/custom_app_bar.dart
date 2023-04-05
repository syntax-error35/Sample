import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.titleText}) : super(key: key);
final String titleText;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(titleText),
    );
  }
}
