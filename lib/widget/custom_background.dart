import 'package:flutter/material.dart';

class CustomBackground extends StatelessWidget {
   CustomBackground({Key? key,  this.child}) : super(key: key);
 Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff2C5364),
            Color(0xff203A43),
            Color(0xff0F2027),
          ],
        ),
      ),
      child: child,
    );
  }
}
