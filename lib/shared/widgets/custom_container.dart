// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled7/shared/widgets/custom_widget.dart';
import '../constants/colors.dart';
import 'custom_image.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer(
      {super.key,
      this.value,
      this.startValue,
      this.endValue,
      this.incomeValue,
      this.url = "assets/images/baht-sign 7.png"});
  final String? value;
  final String? startValue;
  final String? endValue;
  final String? incomeValue;
  final String url;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: kWhiteColor, border: Border.all(color: kBlueColor, width: 2)),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: kBlueColor,
              child: Padding(
                padding: const EdgeInsets.only(left: 27, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      value!,
                      style: const TextStyle(color: kWhiteColor, fontSize: 14),
                    ),
                    CustomImage(
                      url: url,
                      width: 14,
                      height: 14,
                    ),
                     Text(
                      "Monthly subscription value",
                      style: TextStyle(color: kWhiteColor, fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 7, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomWidget(
                    label: "start date",
                    labelValue: startValue,
                  ),
                  CustomWidget(
                    label: "income",
                    labelValue: incomeValue,
                  ),
                  CustomWidget(
                    label: "end date",
                    labelValue: endValue,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
