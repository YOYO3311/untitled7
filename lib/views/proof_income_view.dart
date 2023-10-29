import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../shared/constants/colors.dart';
import '../shared/widgets/custom_button1.dart';
import '../shared/widgets/custom_image.dart';
import '../shared/widgets/custom_label_view.dart';
import 'confirmation.dart';

class ProofIncomeView extends StatelessWidget {
  const ProofIncomeView({super.key});

  static String id = "proof of income";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomLabelView(label: "Proof od income"),
            SizedBox(height: 32.h,),
            const CustomImage(url: "assets/images/animation_lmja58ke_large 1.png",),
            SizedBox(height: 17.h,),
            Text("Please enter a photo of the card",style: TextStyle(fontSize: 18.sp,color: kBlackColor),),
            SizedBox(height: 76.h,),
            Padding(
              padding: REdgeInsets.symmetric(horizontal: 16),
              child: CustomButton1(
                onTap: (){
                  Navigator.pushNamed(context, ConfirmationView.id);
                },
                label: "Scanner",
                textWidth: 18.sp,
                width: MediaQuery.of(context).size.width,
              ),
            )

          ],
        ),
      ),
    );
  }
}
