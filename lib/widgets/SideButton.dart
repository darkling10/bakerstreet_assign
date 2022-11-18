import 'package:flutter/material.dart';

class SideButton extends StatelessWidget {
  final VoidCallback onClickHandler;
  IconData buttonIcon;
  String buttonText;

  SideButton({
    Key? key,
    required this.onClickHandler,
    required this.buttonIcon,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onClickHandler,
      icon: Icon(
        buttonIcon,
        color: Colors.white,
      ),
    );
  }
}
