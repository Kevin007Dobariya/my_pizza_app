import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_pizza/constants/app_strings.dart';
import 'package:my_pizza/constants/text_style.dart';
import 'package:my_pizza/controller/add_password/add_password_controller.dart';
import 'package:my_pizza/utils/common_widgets/app_button.dart';
import 'package:my_pizza/utils/common_widgets/custom_text_field.dart';
import 'package:my_pizza/utils/validation/textfield_validation.dart';

class AddPasswordScreen extends StatelessWidget {
  const AddPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddPasswordController>(
      init: AddPasswordController(),
        builder: (_) {
      return SafeArea(
        child: Scaffold(
          body: Container(
            margin: AppStyle.appAllPadding20.copyWith(top: 70),
            child: Form(
              key:_.formKey,
              child: Column(
                children: [
                  customTextField(
                      controller: _.passwordController,
                      validation:(value)=> validatePassword(value),
                      labelText: AppString.password,
                      hintText: AppString.password),
                  SizedBox(height: 10,),
                  Container(
                    width: double.infinity,
                      child: AppButton(
                    onPress: () async {
                    await  _.addPassword();
                      _.submit();
                    },
                    buttonTitle: AppString.submit_button,
                  )),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
