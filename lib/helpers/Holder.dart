import 'package:flutter/material.dart';

import '../widgets/LowerListView.dart';
import '../widgets/UpperInformation.dart';

class Holder extends StatelessWidget {
  const Holder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UpperInformation(type: 'web'),

      ],
    );
  }
}
