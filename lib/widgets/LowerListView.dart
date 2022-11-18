import 'package:flutter/material.dart';
import 'package:ui_practice/widgets/ListViewWidget.dart';

class LowerListView extends StatefulWidget {
  const LowerListView({Key? key}) : super(key: key);

  @override
  State<LowerListView> createState() => _LowerListViewState();
}

class _LowerListViewState extends State<LowerListView> {
  final List<String> entries = <String>['A', 'B', 'C','D'];
  final List<int> colorCodes = <int>[600, 500, 100,200];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                ListViewWidget(data: 'Entry ${entries[index]}',),
                SizedBox(
                  height: 10,
                )
              ],
            );
          }),
    );
  }
}

