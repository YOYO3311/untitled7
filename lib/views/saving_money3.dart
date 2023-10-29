// ignore_for_file: camel_case_types, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../shared/widgets/custom_container.dart';
import '../shared/widgets/custom_label_view.dart';

class SavingMoney_3 extends StatelessWidget {
  const SavingMoney_3({super.key});

  static String id = "save money 3";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SingleChildScrollView(
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: CustomLabelView(label: "Saving Money")),
            SizedBox(
              height: 28.h,
            ),
            const CustomContainer(
              value: "7000",
              startValue: "November",
              endValue: "August",
              incomeValue: "12",
            ),
            SizedBox(height: 24.h,),
            Image.asset("assets/images/Frame 29 (1).png")
          ],
        ),
      ),


    );
    //  ),
    //);
  }
}
