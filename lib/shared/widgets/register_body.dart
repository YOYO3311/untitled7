// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled7/bloc/phone_auth/register_cubit.dart';
import 'package:untitled7/shared/widgets/custom_button.dart';
import 'package:untitled7/views/home_view.dart';
import 'package:untitled7/views/login_view.dart';



import 'cusotm_textfiled.dart';
import 'custom_image.dart';
import 'login_body.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Form(
          key: BlocProvider.of<RegisterCubit>(context).registerFormState,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 54.h,
              ),
              Center(
                  child: CustomImage(
                    url: "assets/images/money-flow 1 (1).png",
                    width: 150.h,
                    height: 150.h,
                  )),
              SizedBox(
                height: 30.h,
              ),
              Text(
                "Register",
                style: TextStyle(fontSize: 24.sp, color: Colors.black),
              ),
              SizedBox(
                height: 30.h,
              ),
              CustomTextField(
                  keyboardType: TextInputType.text,
                  url: "assets/images/user 1.png",
                  hintText: "Enter Your Name",
                  textAlign: TextAlign.start, controller: TextEditingController(),),
              SizedBox(
                height: 12.h,
              ),
              CustomTextField(
                  keyboardType: TextInputType.number,
                  url: "assets/images/user 1.png",
                  hintText: "Enter Your Age",
                  textAlign: TextAlign.start, controller: TextEditingController(),),
              SizedBox(
                height: 12.h,
              ),
              CustomTextField(
                keyboardType: TextInputType.phone,
                hintText: "Enter Your Phone Number",
                textAlign: TextAlign.start,
                url: "assets/images/phone 1.png", controller: TextEditingController(),
              ),
              SizedBox(
                height: 12.h,
              ),
              CustomTextField(
                  keyboardType: TextInputType.number,
                  url: "assets/images/citizenship 1.png",
                  hintText: "Enter Your National ID",
                  textAlign: TextAlign.start, controller: TextEditingController(),),
              const SizedBox(
                height: 24,
              ),

              //verification button

              CustomButton(
                label: "Save",
                url: "assets/images/logout 1.png",
                onTap: () {
                  if (BlocProvider.of<RegisterCubit>(context)
                      .registerFormState
                      .currentState!
                      .validate()) {
                    Navigator.pushNamed(context, MyPhoneView.id);
                  }
                },
                width: MediaQuery.of(context).size.width,
                textWidth: 18.sp,
                imageWidth: 24.sp,
                imageHeight: 24.sp,
              ),
              const SizedBox(
                height: 12,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TextEditingControllerID {
}
