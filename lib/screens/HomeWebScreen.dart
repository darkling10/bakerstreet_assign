import 'package:flutter/material.dart';
import 'package:ui_practice/widgets/NotificationSide.dart';
import 'package:ui_practice/widgets/SideDrawer.dart';

import '../widgets/LowerListView.dart';
import '../widgets/UpperInformation.dart';

class HomeWebScreen extends StatelessWidget {
  const HomeWebScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SideDrawer(),
          SizedBox(
            width: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 16, right: 16),
            child: Container(
              width: 600,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromRGBO(51, 48, 48, 1),
              ),

              padding: EdgeInsets.only(top: 10.0),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Title",
                      style: TextStyle(fontSize: 36, color: Colors.white),
                    ),
                  ),
                  UpperInformation(type: 'web'),
                  LowerListView(),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          NotificationSide(),
        ],
      ),
    );
  }
}
