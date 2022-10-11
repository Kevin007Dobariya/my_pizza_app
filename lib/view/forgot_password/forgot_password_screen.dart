import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_pizza/constants/app_strings.dart';
import 'package:my_pizza/constants/text_style.dart';
import 'package:my_pizza/controller/forgot_password/forgot_password_controller.dart';
import 'package:my_pizza/utils/common_widgets/app_button.dart';
import 'package:my_pizza/utils/common_widgets/custom_text_field.dart';
import 'package:my_pizza/utils/validation/textfield_validation.dart';

class ForgotPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ForgotPassWordController>(
        init: ForgotPassWordController(),
        builder: (_) {
          return Form(
            key: _.formKey,
            child: SafeArea(
              child: Scaffold(
                body: SingleChildScrollView(
                  child: Container(
                    margin: AppStyle.appAllPadding10,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 48.0),
                          child: Container(
                              height: 200,
                              width: MediaQuery.of(context).size.width / 3,
                              child: Image.asset('images/my_pizza.png')),
                        ),
                        customTextField(
                          controller: _.numberController,
                          maxLength: 10,
                          textInputType: TextInputType.number,
                          validation: (value) => validateMobile(value),
                          hintText: AppString.mobile_no,
                          labelText: AppString.mobile_no,
                        ),
                        SizedBox(height: 20,),
                        Container(
                            width: MediaQuery.of(context).size.width / 1.5,
                            child: AppButton(
                              onPress: () async {
                               await _.resendOtp();
                                _.submit();
                              },
                              buttonTitle: AppString.submit_button,
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
