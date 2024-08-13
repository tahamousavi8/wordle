import 'package:flutter/material.dart';

class MyIcon extends StatelessWidget {
  // final VoidCallback onPressed;
  final IconData myIcon;
  final Color myColor;
  const MyIcon({super.key, required this.myIcon, required this.myColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(6),
        child: Icon(
          myIcon,
          size: 32,
          color: myColor,
        ),
      ),
    );
  }
}
