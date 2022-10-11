import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:my_pizza/constants/app_strings.dart';
import 'package:my_pizza/constants/text_style.dart';
import 'package:my_pizza/controller/otp/otp_controller.dart';
import 'package:my_pizza/utils/validation/textfield_validation.dart';

class OtpScreen extends StatelessWidget {
  final String? number;
  final String? otp;

  const OtpScreen({Key? key, this.number, this.otp}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OtpController>(
        init: OtpController(),
        builder: (_) {
      return Scaffold(
        body: Form(
          key: _.formKey,
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                children: [
                  Text(AppString.verification_code,
                    style: AppStyle.mediumRoboto(size: 14),),
                  SizedBox(height: 10,),
                  Text(AppString.type_code,
                    style: AppStyle.regularRoboto(size: 14,color: Colors.grey),),
                  Text(number!,
                    style: AppStyle.regularRoboto(size: 14,color: Colors.grey),),
                  SizedBox(height: 50,),
                  PinCodeTextField(
                    length: 6,
                    keyboardType: TextInputType.number,
                    animationType: AnimationType.fade,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.underline,
                      fieldHeight: 50,
                      fieldWidth: 40,
                      activeFillColor: Colors.white,
                      inactiveFillColor: Colors.white,
                      selectedFillColor: Colors.white
                    ),
                    animationDuration: Duration(milliseconds: 300),
                    enableActiveFill: true,
                    validator:(value)=> otpValidation(value),
                    controller: _.otpController,
                    onCompleted: (v) {
                      print("Completed");
                    },
                    onChanged: (value) {
                      print(value);
                    },
                    appContext: context,
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          onTap: (){
                            _.number=number!;
                            _.otpController.clear();
                            _.resendOtp();},
                          child: Container(child: Text(AppString.resend),color: Colors.transparent)),
                      GestureDetector(
                        onTap: () async {
                          _.number=number!;
                         await _.verifyOtp();
                          _.submit();},
                          child: Container(child: Text(AppString.validate),color: Colors.transparent,)),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
