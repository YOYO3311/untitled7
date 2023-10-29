// ignore_for_file: unused_import

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled7/views/onboarding1_view.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Clean Code',
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
            duration: 4000,
            splashIconSize: double.infinity,
            splash:
            Lottie.network('lib/ath/Animation - 1696427482640 (3).json',
              // cacheHeight: 1500,
              // cacheWidth: 2000,
              width: 350,
              height: 200,),
            nextScreen: OnBoardingView_1(),
            splashTransition: SplashTransition.fadeTransition,
            backgroundColor: Colors.white
        )
    );
  }
}
// return  OnBoardingView_1();