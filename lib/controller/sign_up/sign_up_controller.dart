import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_pizza/constants/app_colors.dart';
import 'package:my_pizza/constants/app_strings.dart';
import 'package:my_pizza/models/sign_up/sign_up_model.dart';
import 'package:my_pizza/services/sign_up/sign_up_service.dart';
import 'package:my_pizza/utils/sahredpreference/app_prefrence.dart';
import 'package:my_pizza/view/otp/otp_screen.dart';

class SignUpController extends GetxController {
  late bool genderIsMale = true;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  late SignUpModel signUpModel;

  final formKey = GlobalKey<FormState>();
  late SignUpModel model;

  Future<void> submit() async {
    final isValid = formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    if (isValid) {
      formKey.currentState!.save();
      await signUp();
      if (model.status == 1) {
        AppPreference.set(AppString.logged, true);

        Get.off(OtpScreen(otp: model.otp.toString(),number: numberController.text,));
      }
      if (model.msg == AppString.already_registered) {
        Get.snackbar(
          AppString.warning,
          AppString.already_registered,
          snackPosition: SnackPosition.BOTTOM,
          colorText: Colors.white,
          backgroundColor:AppColors.themeColorRed,
        );
      }
    }
  }

  int get genderType {
    if (genderIsMale) {
      return 1;
    } else {
      return 2;
    }
  }

  signUp() async {
    print('test 3');
    model = await SignUpService().signUpRequest(
        endPoint: AppString.signUp_end_point,
        username: '',
        gender: genderType,
        token: 'saskldadfjnsfjnejne32oqiodweoidj23ioodfndfk',
        lname: lastNameController.text,
        mobile: numberController.text,
        name: lastNameController.text,
        dob: '');

    print('from controller${model.msg}======${model.status}');
  }

  void changeGender(bool value) {
    genderIsMale = value;
    print('gender value is $genderType');
    update();
  }
  void dispose() {
    numberController.clear();
    nameController.clear();
    lastNameController.clear();
    super.dispose();
  }

}
