import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled7/shared/constants/colors.dart';

import '../shared/widgets/custom_label_view.dart';

class SupportView extends StatelessWidget {
  const SupportView({super.key});

  static String id = "support view";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [
          const CustomLabelView(label: "Support"),
          Expanded(child: Container()),
          TextFormField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              suffixIcon: Padding(
                padding:  REdgeInsets.symmetric(horizontal: 10),
                child: Image.asset("assets/images/comment 1.png"),
              ),
              hintText: "writing a letter",
                hintStyle: const TextStyle(color: kWhiteColor,fontSize: 14,),
                fillColor: kLightGreyColor,
                filled: true,
                 border: OutlineInputBorder(
                  borderSide: const BorderSide(color: kLightGreyColor,width: 0,style: BorderStyle.none),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12.r),
                      topRight: Radius.circular(12.r)),
                ),

            ),
          )
        ],
      ),
    );
  }
}
