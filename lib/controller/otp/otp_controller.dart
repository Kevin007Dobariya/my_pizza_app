import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_pizza/constants/app_colors.dart';
import 'package:my_pizza/constants/app_strings.dart';
import 'package:my_pizza/models/resend_otp/resend_otp_model.dart';
import 'package:my_pizza/models/verify_otp/verify_otp_model.dart';
import 'package:my_pizza/routes/name_routes.dart';
import 'package:my_pizza/services/resend_otp/resend_otp_service.dart';
import 'package:my_pizza/services/verify_otp/verify_otp_service.dart';
import 'package:my_pizza/utils/sahredpreference/app_prefrence.dart';


class OtpController extends GetxController {
  TextEditingController otpController=TextEditingController();

  final formKey = GlobalKey<FormState>();
  late String number;
  late VerifyOtpModel verifyOtpModel;
  ResendOtpModel resendOtpModel=ResendOtpModel();


  void submit() {
    final isValid = formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    if(isValid){
      print(verifyOtpModel.status==1);
      if(verifyOtpModel.status==1)
        {
          print('user id test ${verifyOtpModel.userId}');
          AppPreference.set(AppString.user_id, verifyOtpModel.userId.toString());
          print('user id test ${AppPreference.getString(AppString.user_id)}');
          Get.offNamed(Routes.AddPasswordScreen);
        }
      else
        {
          Get.snackbar(
            AppString.warning,
            AppString.otp_error,
            snackPosition: SnackPosition.BOTTOM,
            colorText: Colors.white,
            backgroundColor:AppColors.themeColorRed,
          );
        }
    }
    formKey.currentState!.save();
  }

 verifyOtp() async {
     verifyOtpModel= await VerifyOtpService().verifyOtp(int.parse(number), int.parse(otpController.text),AppString.verify_otp_end_point);
  }

  Future<ResendOtpModel> resendOtp()async{
  return resendOtpModel=await ResendOtpService().resendOtpRequest(mobile: number,token: '',endPoint: AppString.resend_otp_end_point);
  }
}