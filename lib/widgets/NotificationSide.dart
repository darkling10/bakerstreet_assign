import 'package:flutter/material.dart';
import 'package:ui_practice/widgets/ListViewNotif.dart';
import 'package:ui_practice/widgets/UpperInformation.dart';

import 'ListViewWidget.dart';
import 'LowerListView.dart';

class NotificationSide extends StatelessWidget {
  final List<String> entries = <String>[
    'Notfication 1',
    'Notification 2',
    'Notification 3',
    'Notification4'
  ];

  NotificationSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 2.0, left: 16, right: 16),
      child: Container(
        width: 500,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black,
        ),
        padding: EdgeInsets.only(top: 5.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              alignment: Alignment.topLeft,
              child: Text(
                "Notifcation",
                style: TextStyle(fontSize: 36, color: Colors.white),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: entries.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        ListViewNotif(
                          data: 'Entry ${entries[index]}',
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
