import 'package:flutter/material.dart';

import '../widgets/BottomNavigator.dart';
import '../widgets/LowerListView.dart';
import '../widgets/UpperInformation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            UpperInformation(type: 'mobile',),
            LowerListView(),
          ],
        ),
      ),
    );
  }
}
