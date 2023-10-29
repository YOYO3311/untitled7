import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../shared/widgets/custom_app_bar.dart';
import '../shared/widgets/custom_card_list_tile.dart';

class DocumentsView extends StatelessWidget {
  const DocumentsView({super.key});

  static String id = "DocumentsView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        text: 'documents',
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: REdgeInsets.only(bottom: 24),
                child: CustomCardListTile(
                  leading: Image.asset('assets/images/money-exchange 1.png'),
                  title: Text(
                    'Proof of income',
                    style: TextStyle(
                      fontSize: 16.sp,
                    ),
                  ),
                  trailing: Image.asset(
                      'assets/images/down-filled-triangular-arrow 1.png'),
                ),
              ),
              Padding(
                padding: REdgeInsets.only(bottom: 24),
                child: CustomCardListTile(
                  leading: Image.asset('assets/images/bill 1.png'),
                  title: Text(
                    'Housing bills',
                    style: TextStyle(
                      fontSize: 16.sp,
                    ),
                  ),
                  trailing: Image.asset(
                      'assets/images/down-filled-triangular-arrow 1.png'),
                ),
              ),
              Padding(
                padding: REdgeInsets.only(bottom: 24),
                child: CustomCardListTile(
                  leading: Image.asset('assets/images/valet-parking 1.png'),
                  title: Text(
                    'Proof of car ownership',
                    style: TextStyle(
                      fontSize: 16.sp,
                    ),
                  ),
                  trailing: Image.asset(
                      'assets/images/down-filled-triangular-arrow 1.png'),
                ),
              ),
              Padding(
                padding: REdgeInsets.only(bottom: 24),
                child: CustomCardListTile(
                  leading: Image.asset('assets/images/membership-card 1.png'),
                  title: Text(
                    'Identification card',
                    style: TextStyle(
                      fontSize: 16.sp,
                    ),
                  ),
                  trailing: Image.asset(
                      'assets/images/down-filled-triangular-arrow 1.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
