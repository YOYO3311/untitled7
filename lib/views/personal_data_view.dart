import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../shared/constants/colors.dart';
import '../shared/widgets/custom_app_bar.dart';

class PersonalDataView extends StatelessWidget {
  const PersonalDataView({super.key});

  static String id = "PersonalDataView";

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: REdgeInsets.symmetric(horizontal: 16),
            child: CustomScrollView(
              slivers: [
                const SliverToBoxAdapter(
                  child: CustomAppBar(
                    text: 'Personal data',
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 24.h,
                  ),
                ),
                SliverToBoxAdapter(
                  child: Text(
                    'Name',
                    style: TextStyle(
                      fontSize: 20.sp,
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: REdgeInsets.only(top: 8, bottom: 16),
                    child: TextFormField(
                      onTapOutside: (event) {
                        FocusScope.of(context).unfocus();
                      },
                      decoration: InputDecoration(
                        fillColor: kBlueColor,
                        filled: true,
                        hintText: 'Enter your name',
                        hintStyle: const TextStyle(
                          color: kWhiteColor,
                        ),
                        enabledBorder: const OutlineInputBorder(),
                        focusedBorder: const OutlineInputBorder(),
                        prefixIcon: Image.asset(
                          'assets/images/user 1.png',
                        ),
                      ),
                      style: TextStyle(
                        color: kWhiteColor,
                        fontSize: 18.sp,
                      ),
                      keyboardType: TextInputType.name,
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Text(
                    'Age',
                    style: TextStyle(
                      fontSize: 20.sp,
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: REdgeInsets.only(top: 8, bottom: 16),
                    child: TextFormField(
                      onTapOutside: (event) {
                        FocusScope.of(context).unfocus();
                      },
                      decoration: InputDecoration(
                        fillColor: kBlueColor,
                        filled: true,
                        hintText: 'Enter your age',
                        hintStyle: const TextStyle(
                          color: kWhiteColor,
                        ),
                        enabledBorder: const OutlineInputBorder(),
                        focusedBorder: const OutlineInputBorder(),
                        prefixIcon: Image.asset('assets/images/user 1.png'),
                      ),
                      style: TextStyle(color: kWhiteColor, fontSize: 18.sp),
                      keyboardType: TextInputType.name,
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Text(
                    'Phone Number',
                    style: TextStyle(
                      fontSize: 20.sp,
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: REdgeInsets.only(top: 8),
                    child: IntlPhoneField(
                      initialCountryCode: 'EG',
                      dropdownTextStyle: TextStyle(
                        color: kWhiteColor,
                        fontSize: 16.sp,
                      ),
                      dropdownIcon: Icon(
                        Icons.arrow_drop_down,
                        color: kWhiteColor,
                        size: 20.sp,
                      ),
                      decoration: const InputDecoration(
                        fillColor: kBlueColor,
                        filled: true,
                        hintText: 'Enter your phone number',
                        hintStyle: TextStyle(
                          color: kWhiteColor,
                        ),
                        enabledBorder: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(),
                        errorBorder: OutlineInputBorder(),
                        focusedErrorBorder: OutlineInputBorder(),
                      ),
                      style: TextStyle(color: kWhiteColor, fontSize: 18.sp),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 20.sp,
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: REdgeInsets.only(top: 8, bottom: 16),
                    child: TextFormField(
                      onTapOutside: (event) {
                        FocusScope.of(context).unfocus();
                      },
                      decoration: InputDecoration(
                        fillColor: kBlueColor,
                        filled: true,
                        hintText: 'Enter your email address',
                        hintStyle: const TextStyle(
                          color: kWhiteColor,
                        ),
                        enabledBorder: const OutlineInputBorder(),
                        focusedBorder: const OutlineInputBorder(),
                        prefixIcon: Icon(
                          Icons.email,
                          color: kWhiteColor,
                          size: 30.sp,
                        ),
                      ),
                      style: TextStyle(color: kWhiteColor, fontSize: 18.sp),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
