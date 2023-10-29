// ignore_for_file: camel_case_types, prefer_const_constructors, sort_child_properties_last, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Personal_data extends StatelessWidget {
  const Personal_data({super.key});

  static String id = "personal";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.grey[200],
      ),
      home: Scaffold(
        body: ListView(children: [
          PersonalData(),
        ]),
      ),
    );
  }
}

class PersonalData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

      return Column(children: [
        Container(

            width: 360.w,
            height: 640.h,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(color: Color(0xFFEEEEEE)),
            child: Stack(
              children: [
            IconButton(
                  icon: Icon(Icons.arrow_back_sharp,color: Colors.black,),
                  onPressed: (){
                    Navigator.pushNamed(context,"/payment_for_purchases");
                  },

                ),
                //),
               Positioned(
                  left: 72,
                  top: 10,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [


                        Text(
                          'Personal data',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.sp,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),

                        Container(
                          width: 100.w,
                          height: 70.h,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/img/logo2.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Positioned(
                  left: 12,
                  top: 134,
                  child: Container(
                    width: 317.w,
                    height: 38.h,
                    child: TextField(decoration: InputDecoration()),
                    decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
                  ),
                ),
                Positioned(
                  left: 12,
                  top: 221,
                  child: Container(
                    width: 318.w,
                    height: 38.h,
                    child: TextField(decoration: InputDecoration()),
                    decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
                  ),
                ),
                Positioned(
                  left: 13,
                  top: 306,
                  child: Container(
                    width: 250.w,
                    height: 40.h,
                    child: TextField(decoration: InputDecoration()),
                    decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
                  ),
                ),
                Positioned(
                  left: 12,
                  top: 390,
                  child: Container(
                    width: 317.w,
                    height: 38.h,
                    child: TextField(decoration: InputDecoration()),
                    decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Positioned(
                  left: 15,
                  top: 100,
                  child: SizedBox(
                    width: 111.w,
                    height: 25.h,
                    child: Text(
                      textAlign: TextAlign.left,
                      'Name',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.sp,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 15,
                  top: 183,
                  child: SizedBox(
                    width: 111.w,
                    height: 25.h,
                    child: Text(
                      textAlign: TextAlign.left,
                      'Lest Name',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.sp,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 15,
                  top: 263,
                  child: SizedBox(
                    width: 147.w,
                    height: 25.h,
                    child: Text(
                      textAlign: TextAlign.left,
                      'Phone Nember',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.sp,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 15,
                  top: 354,
                  child: SizedBox(
                    width: 147.w,
                    height: 25.h,
                    child: Text(
                      textAlign: TextAlign.left,
                      'Email',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.sp,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 270,
                  top: 305,
                  child: Container(

                    padding: const EdgeInsets.symmetric(
                      horizontal: 2,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/img/Egypt .png",),
fit: BoxFit.fill
                      ),
                      color: Colors.grey[300],
                    ),
                    width: 60.w,
                    height: 40.h,
                    child: TextField(
                      // controller: _emailControlar,
                      decoration: InputDecoration(

                        border: InputBorder.none,
                        hintText: "+20",
                        hintStyle:
                            TextStyle(fontSize: 20.sp, color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ))


    ]);
  }
}
