import 'package:flutter/material.dart';

class ListViewNotif extends StatelessWidget {
  String data = '';

  ListViewNotif({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(v),
      height: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.white),
        color: Color.fromRGBO(51, 48, 48, 1),
      ),
      child: Row(
        children: [
          Icon(
            Icons.abc,
            size: 50,
            color: Colors.orange,
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            // width: 400,
            child: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
