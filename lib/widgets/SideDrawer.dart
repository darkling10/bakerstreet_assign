import 'package:flutter/material.dart';
import 'package:ui_practice/widgets/SideButton.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({Key? key}) : super(key: key);

  void onClickHandler() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 60),
      height: 900,
      width: 60,
      // color: Colors.white,
      child: Column(
        children: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/');
            },
            icon: Icon(
              Icons.square,
              size: 48.0,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SideButton(
            onClickHandler: () {
              Navigator.of(context).pushNamed('/');
            },
            buttonIcon: Icons.home,
            buttonText: "Home",
          ),
          SizedBox(
            height: 20,
          ),
          SideButton(
            onClickHandler: () {
              Navigator.of(context).pushNamed('/settings');
            },
            buttonIcon: Icons.settings,
            buttonText: "Settings",
          ),
        ],
      ),
    );
  }
}
