import 'package:flutter/material.dart';

import '../screens/HomeScreen.dart';
import '../screens/SettingScreen.dart';
import '../widgets/BottomNavigator.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({Key? key}) : super(key: key);

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {

  int currentPageIndex = 0;
  Widget currentWidget = HomeScreen();

  void updateIndex(int newIndex){
    setState(() {
      currentPageIndex = newIndex;
    });

    switch (currentPageIndex) {
      case 0:
        currentWidget = Container(
          color: Colors.grey[900],
          alignment: Alignment.center,
          child: HomeScreen(),
        );
        break;
      case 1 :
        currentWidget = Container(
          color: Colors.grey[900],
          alignment: Alignment.center,
          child: SettingScreen(),
        );
        break;
      case 2:
        currentWidget = const Text("Hiiii");
        break;
    }
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.square),
          ),
          actions: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notification_important_sharp),
                )
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigator(
          onIndexChanged: updateIndex,
          index: currentPageIndex,
        ),
        body: Center(
          child: currentWidget,
        ),
      ),
    );
  }
}

