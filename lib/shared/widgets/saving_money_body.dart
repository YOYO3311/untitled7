// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_container.dart';
import 'custom_label_view.dart';

class SavingMoneyBody extends StatelessWidget {
  const SavingMoneyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        CustomLabelView(label: "Saving Money"),

        SizedBox(
          height: 28.h,
        ),
        const CustomContainer(
          value: "7000",
          startValue: "November",
          endValue: "August",
          incomeValue: "12",
        ),
        const SizedBox(
          height: 8,
        ),
        const CustomContainer(
          value: "5000",
          startValue: "November",
          endValue: "August",
          incomeValue: "12",
        ),
      ],
    );
  }
}
