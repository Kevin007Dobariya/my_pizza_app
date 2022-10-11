import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_pizza/constants/app_strings.dart';
import 'package:my_pizza/models/resend_otp/resend_otp_model.dart';
import 'package:my_pizza/services/resend_otp/resend_otp_service.dart';
import 'package:my_pizza/view/otp/otp_screen.dart';

class ForgotPassWordController extends GetxController {
  TextEditingController numberController=TextEditingController();
  final formKey = GlobalKey<FormState>();
  ResendOtpModel resendOtpModel=ResendOtpModel();
  void submit() {
    final isValid = formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    if(isValid){
      formKey.currentState!.save();
      if(resendOtpModel.status==1)
        {
          Get.off(OtpScreen(number: numberController.text,otp: resendOtpModel.otp.toString(),));
        }
    }
  }

  Future<ResendOtpModel> resendOtp()async{
    return resendOtpModel=await ResendOtpService().resendOtpRequest(mobile: numberController.text,token: '',endPoint: AppString.resend_otp_end_point);
  }
}