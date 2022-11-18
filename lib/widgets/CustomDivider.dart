import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  double divWidth = 0;
  double divHeight = 0;
  Color dividerColor;

  CustomDivider({
    Key? key,
    required this.divWidth,
    required this.divHeight,
    required this.dividerColor,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: divWidth,
      height: divHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: dividerColor,
      ),
    );
  }
}
