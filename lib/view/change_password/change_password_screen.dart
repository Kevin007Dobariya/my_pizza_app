import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_pizza/constants/app_strings.dart';
import 'package:my_pizza/constants/text_style.dart';
import 'package:my_pizza/controller/change_password/change_password_controller.dart';
import 'package:my_pizza/utils/common_widgets/app_button.dart';
import 'package:my_pizza/utils/common_widgets/common_appbar.dart';
import 'package:my_pizza/utils/common_widgets/custom_text_field.dart';
import 'package:my_pizza/utils/validation/textfield_validation.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChangePasswordController>(
        init: ChangePasswordController(),
        builder: (_) {
          return SafeArea(
            child: Scaffold(
              appBar: CommonAppBar(title: AppString.change_password),
              body: SingleChildScrollView(
                child: Container(
                  margin: AppStyle.appAllPadding30.copyWith(top: 40),
                  child: Form(
                    key: _.formKey,
                    child: Column(
                      children: [
                        customTextField(
                          controller: _.oldPasswordController,
                          validation: (value) => validatePassword(value),
                          hintText: AppString.old_password,
                          labelText: AppString.old_password,
                        ),
                        SizedBox(height: 10,),
                        customTextField(
                          controller: _.newPasswordController,
                          validation: (value) => validatePassword(value),
                          hintText: AppString.new_password,
                          labelText: AppString.new_password,
                        ),
                        SizedBox(height: 10,),
                        customTextField(
                          controller: _.conformPasswordController,
                          validation: (value) => confirmPasswordValidation(
                              value, _.newPasswordController.text),
                          hintText: AppString.conform_password,
                          labelText: AppString.conform_password,
                        ),
                        SizedBox(height: 20,),
                        Container(
                          margin: AppStyle.appSymmetricPaddingH10,
                          width: double.infinity,
                          child: AppButton(
                            onPress: () {
                              _.submit();
                            },
                            buttonTitle: AppString.save,
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
