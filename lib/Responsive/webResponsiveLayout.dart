import 'package:flutter/material.dart';
import 'package:ui_practice/screens/HomeWebScreen.dart';
import 'package:ui_practice/screens/SettingScreen.dart';
import 'package:ui_practice/widgets/LowerListView.dart';
import 'package:ui_practice/widgets/SideDrawer.dart';
import 'package:ui_practice/widgets/UpperInformation.dart';

class WebLayout extends StatefulWidget {
  const WebLayout({Key? key}) : super(key: key);

  @override
  State<WebLayout> createState() => _WebLayoutState();
}

class _WebLayoutState extends State<WebLayout> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeWebScreen(),
        '/setting': (context) => SettingScreen(),
      },
      // home: SafeArea(
      //   child: Scaffold(
      //     backgroundColor: Colors.black,
      //     body: HomeWebScreen(),
      //   ),
      // ),
    );
  }
}
