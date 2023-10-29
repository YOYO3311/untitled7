// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, avoid_web_libraries_in_flutter, unused_import, sort_child_properties_last, avoid_unnecessary_containers, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../shared/widgets/custom_container.dart';
import '../shared/widgets/custom_label_view.dart';

class SavingMoney_2 extends StatelessWidget {
  const SavingMoney_2({super.key});

  static String id = "save money 2";


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
            Image.asset("assets/images/Frame 29.png")
          ],
        ),
      ),

     
    );
    //  ),
    //);
  }
}
