import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_pizza/constants/app_strings.dart';
import 'package:my_pizza/models/add_password/add_password_model.dart';
import 'package:my_pizza/routes/name_routes.dart';
import 'package:my_pizza/services/add_password/add_password_service.dart';
import 'package:my_pizza/utils/sahredpreference/app_prefrence.dart';

class AddPasswordController extends GetxController {
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  late AddPasswordModel passwordModel;
  late String user_id;
  void submit() {
    final isValid = formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    if(isValid){
      formKey.currentState!.save();
      if(passwordModel.status==1){
        AppPreference.set(AppString.fName, passwordModel.data!.name);
        AppPreference.set(AppString.lName,  passwordModel.data!.lname);
        AppPreference.set(AppString.gender,  passwordModel.data!.gender);
        AppPreference.set(AppString.number,  passwordModel.data!.mobile);
        Get.offNamed(Routes.InvitationScreen);
      }
    }
  }
  addPassword() async {
    user_id= await AppPreference.getString(AppString.user_id) ;
    print('user id test2 ${user_id}');
    passwordModel= await AddPasswordService().addPasswordRequest(userId: user_id,password: passwordController.text,token:'');
  }

}