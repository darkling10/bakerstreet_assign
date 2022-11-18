import 'package:flutter/material.dart';
import 'package:ui_practice/widgets/CustomDivider.dart';
import 'package:ui_practice/widgets/CustomText.dart';

class UpperInformation extends StatelessWidget {
  String type ;
  UpperInformation({Key? key,required this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (type == 'mobile')
      ?350
      :225,
      // color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomDivider(
              divHeight: (type== 'mobile')?325:200,
              divWidth: 6,
              dividerColor: Colors.orange,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          data: "1234",
                          data_2: "Lorem ipsum",
                        ),
                        CustomDivider(
                          divWidth: 1,
                          divHeight: 80,
                          dividerColor: Colors.white,
                        ),
                        CustomText(
                          data: "4567",
                          data_2: "Lorem ipsum",
                        ),
                        CustomDivider(
                          divWidth: 1,
                          divHeight: 80,
                          dividerColor: Colors.white,
                        ),
                        CustomText(
                          data: "8910",
                          data_2: "Lorem ipsum",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: (type == 'mobile')
                          ? 335
                          : MediaQuery.of(context).size.width / 2.5,
                      height: (type == 'mobile')
                          ? 225
                          : MediaQuery.of(context).size.height / 6,


                      // color: Colors.white,
                      child: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum,It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    //Row
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
