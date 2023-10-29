import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../shared/widgets/custom_container.dart';
import '../shared/widgets/custom_label_view.dart';

class FinancialAssociationView extends StatelessWidget {
  const FinancialAssociationView({super.key});

  static String id = "Financial Association";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomLabelView(label: "Financial Association"),

            SizedBox(
              height: 12.h,
            ),
            const CustomContainer(
              url: "assets/images/dollar (3) 2.png",
              value: "7000",
              startValue: "November",
              endValue: "August",
              incomeValue: "12",
            ),
            const SizedBox(
              height: 8,
            ),
            const CustomContainer(
              url: "assets/images/dollar (3) 2.png",
              value: "5000",
              startValue: "November",
              endValue: "August",
              incomeValue: "12",
            ),
            const SizedBox(
              height: 8,
            ),
            const CustomContainer(
              url: "assets/images/dollar (3) 2.png",
              value: "5000",
              startValue: "November",
              endValue: "August",
              incomeValue: "12",
            ),
            const SizedBox(
              height: 8,
            ),
            const CustomContainer(
              url: "assets/images/dollar (3) 2.png",
              value: "5000",
              startValue: "November",
              endValue: "August",
              incomeValue: "12",
            ),
            const SizedBox(
              height: 8,
            ),
            const CustomContainer(
              url: "assets/images/dollar (3) 2.png",
              value: "5000",
              startValue: "November",
              endValue: "August",
              incomeValue: "12",
            ),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
