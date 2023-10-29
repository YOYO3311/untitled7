import 'package:flutter/material.dart';

import '../constants/colors.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget({super.key, this.label, this.labelValue});
  final String? label;
  final String? labelValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(label!, style:  const TextStyle(color: kBlueColor,fontSize: 14),),
        Text(labelValue!, style:  const TextStyle(color: kBlackColor,fontSize: 14),),

      ],
    );
  }
}
