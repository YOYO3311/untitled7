// ignore_for_file: prefer_const_constructors, camel_case_types, unused_import, prefer_const_literals_to_create_immutables
//
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// import '../shared/constants/colors.dart';
// import '../shared/widgets/custom_button.dart';
// import '../shared/widgets/onboarding_row.dart';


// class OnBoardingView_1 extends StatelessWidget {
//   const OnBoardingView_1({super.key});
//
//   static String id = "onboarding1";
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               SizedBox(height: 100.h,),
//               SizedBox(
//                 width: MediaQuery.of(context).size.width/2,
//                 child: Image.asset(
//                   "assets/images/undraw_Investing_re_bov7__1_-removebg-preview 1.png",
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               Text(
//                 "Investing",
//                 style: TextStyle(fontSize: 24.sp),
//               ),
//
//               SizedBox(
//                 height: 24.h,
//               ),
//               //onboarding 2 يذهب الى
//               OnBoardingRow(
//                 color1: kBlueColor,
//               ),
//               SizedBox(
//                 height: 32.h,
//               ),
//
//               CustomButton(
//                   url: 'assets/images/down-filled-triangular-arrow 1.png',
//                   label: "Next",
//                   onTap: () {
//                     Navigator.pushReplacementNamed(context, OnBoardingView_2.id);
//                   },
//                   width: MediaQuery.of(context).size.width/3,
//                   imageWidth: 14.sp,
//                   imageHeight: 14.sp,
//                   textWidth: 24.sp,
//
//
//
//
//               )
//
//               // CustomElevatedButton(onPressed: (){
//               //   Navigator.pushNamed(context, OnBoardingView_2.id);
//               // }, text: "Next" , textWidth: 24.sp,)
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }




import 'package:flutter/material.dart';
import 'package:flutter_walkthrough_screen/flutter_walkthrough_screen.dart';
import 'login_view.dart';
import 'onboarding2_view.dart';

class OnBoardingView_1 extends StatelessWidget {
   OnBoardingView_1({super.key});
  static String id = "onboarding1";

  final List<OnbordingData> list = [
    OnbordingData(
      image: AssetImage("assets/images/undraw_Investing_re_bov7__1_-removebg-preview 1.png"),
      titleText:Text("Investing"),
      descText: Text("This is desc1"),
    ),
    OnbordingData(
      image: AssetImage("assets/images/undraw_Vault_re_s4my__1_-removebg-preview 1.png"),
      titleText:Text("Saving"),
      descText: Text("This is desc2"),
    ),
    OnbordingData(
      image: AssetImage("assets/images/undraw_Pay_online_re_aqe6__1_-removebg-preview 1.png"),
      titleText:Text("Online Payment"),
      descText: Text("This is desc4"),
    ),
    OnbordingData(
      image: AssetImage("assets/images/Consent-rafiki.png"),
      titleText:Text("This is Title4"),
      descText: Text("This is desc4"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    /* remove the back button in the AppBar is to set automaticallyImplyLeading to false
  here we need to pass the list and the route for the next page to be opened after this. */
    return IntroScreen(
      onbordingDataList: list,
      colors: [
        //list of colors for per pages
        Colors.white,
        Colors.red,
      ],
      pageRoute: MaterialPageRoute(
        builder: (context) => MyPhoneView()
      ),
      nextButton: Text(
        "NEXT",
        style: TextStyle(
          color: Colors.purple,
        ),
      ),
      lastButton: Text(
        "GOT IT",
        style: TextStyle(
          color: Colors.purple,
        ),
      ),
      skipButton: Text(
        "SKIP",
        style: TextStyle(
          color: Colors.purple,
        ),
      ),
      selectedDotColor: Colors.orange,
      unSelectdDotColor: Colors.grey,
    );
  }
}