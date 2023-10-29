import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../shared/constants/colors.dart';
import '../shared/widgets/custom_card_list_tile.dart';
import '../shared/widgets/custom_label_view.dart';


class AddFriendView extends StatelessWidget {
  const AddFriendView({super.key});

  static String id = "AddFriendView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(child: CustomLabelView(label: "Add a friend")),
            SizedBox(
              height: 170.h,
            ),
            Padding(
              padding: REdgeInsets.symmetric(horizontal: 11),
              child:  Text(
                "Encourage your friends to get involved and plan their goals! Send them an invitation so they can download the app and enjoy Money Back associations without the traditional groups.",
                style: TextStyle(fontSize: 14.sp, color: kBlackColor),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            Padding(
              padding: REdgeInsets.symmetric(horizontal: 12),
              child:  Text(
                "Invitation link",

                style: TextStyle(fontSize: 20.sp, color: kBlackColor),
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            CustomCardListTile(
              title:  Text(
                "http//:Mony back.com",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14.sp, color: kBlackColor),
              ),
              leading: GestureDetector(
                child: Image.asset('assets/images/url 1.png',width: 27.sp,),
                onTap: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
