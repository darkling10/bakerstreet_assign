import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String data;
  String data_2;

  CustomText({Key? key, required this.data, required this.data_2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 115,
      alignment: Alignment.center,
      height: 75,
      child: Column(
        children: [
          Text(
            data,
            style: TextStyle(fontSize: 36, color: Colors.white),
          ),
          Text(
            data_2,
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
