

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'register_state.dart';



class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());
  GlobalKey<FormState> registerFormState = GlobalKey();
  final phoneNumberController = TextEditingController();


}
