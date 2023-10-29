// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled7/bloc/phone_auth/login_cubit.dart';
import 'package:untitled7/bloc/phone_auth/register_cubit.dart';
import 'package:untitled7/layouts/home_layout.dart';
import 'package:untitled7/shared/widgets/MyVerify.dart';
import 'package:untitled7/shared/widgets/login_body.dart';
import 'package:untitled7/views/Payment_for_%20purchases.dart';
import 'package:untitled7/views/personal_data.dart';
import 'shared/constants/colors.dart';
import 'views/Bank_transfer1.dart';
import 'views/Bank_transfer2.dart';
import 'views/Edit_profile.dart';
import 'views/Electronic_wallet1.dart';
import 'views/Submit_a_purchase.dart';
import 'views/add_friend_view.dart';
import 'views/bank_statement_view.dart';
import 'views/bank_transfer_3.dart';
import 'views/change_view.dart';
import 'views/confirmation.dart';
import 'views/connecting_view.dart';
import 'views/documents_view.dart';
import 'views/financial_association_view.dart';
import 'views/home_view.dart';
import 'views/login_view.dart';
import 'views/onboarding1_view.dart';
import 'views/onboarding2_view.dart';
import 'views/onboarding3_view.dart';
import 'views/personal_data_view.dart';
import 'views/proof_income_view.dart';
import 'views/register_view.dart';
import 'views/saving_money-view.dart';
import 'views/saving_money2.dart';
import 'views/saving_money3.dart';
import 'views/servics_view.dart';
import 'views/splash_view.dart';
import 'views/support_view.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyA4w-ThG3hpnE5jkwUxBS5giHoDfKhhXqE",
          appId: "1:873597260632:android:6521a4655f984afbe68b2d",
          messagingSenderId:"677509409746",
          projectId: "login-auth-32775")
  );


  runApp(const MoneyBackApp());
}

class MoneyBackApp extends StatelessWidget {
  const MoneyBackApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider<LoginCubit>(create: (context) => LoginCubit()),
            BlocProvider<RegisterCubit>(create: (context) => RegisterCubit()),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Money Back',
            theme: ThemeData(
              scaffoldBackgroundColor: kGreyColor,
              useMaterial3: true,
            ),
            home: const SplashView(),



            routes: {
              HomeLayout.id: (context) => const HomeLayout(),
              HomeView.id: (context) => const HomeView(),
              PersonalDataView.id: (context) => const PersonalDataView(),
              DocumentsView.id: (context) => const DocumentsView(),
              ProofIncomeView.id: (context) => const ProofIncomeView(),
              BankStatementView.id: (context) => const BankStatementView(),
              MyPhoneView.id: (context) => const MyPhoneView(),
              RegisterView.id: (context) => const RegisterView(),
              ServicesView.id: (context) => const ServicesView(),
              SavingMoneyView.id: (context) => const SavingMoneyView(),
              AddFriendView.id:(context ) => const AddFriendView(),
              BankTransfer1.id: (context) => const BankTransfer1(),
              BankTransfer2.id: (context) => const BankTransfer2(),
              ChangeView.id: (context) => const ChangeView(),
              ConfirmationView.id: (context) => const ConfirmationView(),
              EditProfileView.id: (context) => const EditProfileView(),
              ElectronicWalletView.id: (context) => const ElectronicWalletView(),
              BankTransfer3.id: (context) => const BankTransfer3(),
              ConnectingView.id: (context) => const ConnectingView(),
              FinancialAssociationView.id: (context) => const FinancialAssociationView(),
              OnBoardingView_1.id: (context) =>  OnBoardingView_1(),
              OnBoardingView_2.id: (context) =>  OnBoardingView_2(),
              OnBoardingView_3.id: (context) => const OnBoardingView_3(),
              PaymentForPurchasesView.id: (context) => const PaymentForPurchasesView(),
              Personal_data.id : (context) => const Personal_data(),
              SavingMoney_3.id : (context) => const SavingMoney_3(),
              SavingMoney_2.id : (context) => const SavingMoney_2(),
              SubmitPurchase.id : (context) => const SubmitPurchase(),
              SupportView.id : (context) => const SupportView(),
              'phone': (context) => MyPhone(),
              'verify': (context) => MyVerify()


            },
          ),
        );
      },
    );
  }
}