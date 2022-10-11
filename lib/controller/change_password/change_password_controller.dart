import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_pizza/constants/app_strings.dart';
import 'package:my_pizza/models/change_password/change_password_model.dart';
import 'package:my_pizza/services/change_password/change_password_service.dart';
import 'package:my_pizza/utils/sahredpreference/app_prefrence.dart';

class ChangePasswordController extends GetxController {
  late ChangePasswordModel changePasswordModel;
  late String user_id;
  final formKey = GlobalKey<FormState>();
  final oldPasswordController = TextEditingController();
  final newPasswordController = TextEditingController();
  final conformPasswordController = TextEditingController();

  Future<void> submit() async {
    final isValid = formKey.currentState!.validate();
    if (!isValid) {
      return;
    }if(isValid){
      formKey.currentState!.save();
      await changePassword();
      if(changePasswordModel.status==1){
        Get.back();
        Get.snackbar(
          AppString.success,
          AppString.password_changed,
          snackPosition: SnackPosition.BOTTOM,
          colorText: Colors.white,
          backgroundColor:Colors.green,
        );
      }

    }

  }
  changePassword() async {
    user_id= await AppPreference.getString(AppString.user_id) ;
    changePasswordModel= await ChangePasswordService().changePasswordRequest(oldPassword: oldPasswordController.text,newPassword: newPasswordController.text,confirmPassword: conformPasswordController.text,userId: user_id,);
  }

  @override
  void dispose() {
    newPasswordController.dispose();
    conformPasswordController.dispose();
    super.dispose();
  }
}