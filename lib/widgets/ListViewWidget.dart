import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  String data = '';
  ListViewWidget({Key? key,required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2),
      height: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.white),
        color: Color.fromRGBO(51, 48, 48, 1),
      ),
      child: Center(
        child: Text(
          data,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );

  }
}
