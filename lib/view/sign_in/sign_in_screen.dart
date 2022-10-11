import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_pizza/constants/app_strings.dart';
import 'package:my_pizza/constants/text_style.dart';
import 'package:my_pizza/controller/sign_in/sign_in_controller.dart';
import 'package:my_pizza/routes/name_routes.dart';
import 'package:my_pizza/utils/common_widgets/app_button.dart';
import 'package:my_pizza/utils/common_widgets/custom_text_field.dart';
import 'package:my_pizza/utils/validation/textfield_validation.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignInController>(
        init: SignInController(),
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
                          textInputType: TextInputType.number,
                          validation: (value) => validateMobile(value),
                          hintText: AppString.mobile_no,
                          labelText: AppString.mobile_no,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        customTextField(
                          controller: _.passwordController,
                          validation: (value) => validatePassword(value),
                          hintText: AppString.password,
                          labelText: AppString.password,
                        ),
                        GestureDetector(
                          onTap: () => Get.toNamed(Routes.ForgotPasswordScreen),
                          child: Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                AppString.forgot_password,
                                style: AppStyle.mediumRoboto(
                                    size: 14, color: Colors.grey.shade600),
                              )),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width / 1.5,
                            child: AppButton(
                              onPress: () async {
                                await _.signIn();
                                _.submit();
                              },
                              buttonTitle: AppString.submit_button,
                            )),
                        GestureDetector(
                          onTap: () => Get.offNamed(Routes.SignUpScreen),
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height / 4.5),
                            child: Text(
                              AppString.doNOtHaveAccount,
                              style: AppStyle.mediumRoboto(
                                  size: 14, color: Colors.grey.shade600),
                            ),
                          ),
                        ),
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
