import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_pizza/constants/app_colors.dart';
import 'package:my_pizza/constants/app_strings.dart';
import 'package:my_pizza/models/sign_in/sign_in_model.dart';
import 'package:my_pizza/routes/name_routes.dart';
import 'package:my_pizza/services/sign_in/sign_in_service.dart';
import 'package:my_pizza/utils/sahredpreference/app_prefrence.dart';

class SignInController extends GetxController {
 late bool showPassword;
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  late SignInModel signInModel;
  final formKey = GlobalKey<FormState>();
  void submit() {
    final isValid = formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    if(isValid){
      formKey.currentState!.save();
      if(signInModel.status==1){
        AppPreference.set(AppString.logged, true);
        AppPreference.set(AppString.fName, signInModel.data!.name);
        AppPreference.set(AppString.user_id, signInModel.data!.id);
        AppPreference.set(AppString.lName,  signInModel.data!.lname);
        AppPreference.set(AppString.gender,  signInModel.data!.gender);
        AppPreference.set(AppString.number,  signInModel.data!.mobile);

        Get.offAllNamed(Routes.DashboardScreen);
      }
      if(signInModel.status==2){
        Get.snackbar(
          AppString.warning,
          AppString.invalid_credential,
          snackPosition: SnackPosition.BOTTOM,
          colorText: Colors.white,
          backgroundColor:AppColors.themeColorRed,
        );
      }
    }

  }

 bool get passwordShow{
   return showPassword=!showPassword;

  }

  signIn() async {
    signInModel=await SignInService().signInRequest(mobile: int.parse(numberController.text),password:  passwordController.text, endPoint:  AppString.signIn_end_point);
    print(signInModel.status);
  }

}