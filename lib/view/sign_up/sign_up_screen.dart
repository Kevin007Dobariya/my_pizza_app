import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_pizza/constants/app_strings.dart';
import 'package:my_pizza/constants/text_style.dart';
import 'package:my_pizza/controller/sign_up/sign_up_controller.dart';
import 'package:my_pizza/routes/name_routes.dart';
import 'package:my_pizza/utils/common_widgets/app_button.dart';
import 'package:my_pizza/utils/common_widgets/custom_text_field.dart';
import 'package:my_pizza/utils/validation/textfield_validation.dart';

class SignUpScreen extends StatelessWidget {
  final bool genderIsMale = true;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignUpController>(
        init: SignUpController(),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: customTextField(
                                controller: _.nameController,
                                textInputType: TextInputType.text,
                                validation: (value) => nameValidation(value),
                                hintText: AppString.first_name,
                                labelText: AppString.first_name,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: customTextField(
                                controller: _.lastNameController,
                                textInputType: TextInputType.text,
                                validation: (value) => nameValidation(value),
                                hintText: AppString.last_name,
                                labelText: AppString.last_name,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  _.changeGender(false);
                                },
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: _.genderIsMale
                                        ? Colors.grey.shade200
                                        : Colors.white,
                                    border: Border.all(
                                        color: _.genderIsMale
                                            ? Colors.grey
                                            : Colors.green),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Center(
                                    child: Text(
                                      AppString.female,
                                      textAlign: TextAlign.center,
                                      style: AppStyle.mediumRoboto(size: 16),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  _.changeGender(true);
                                },
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: _.genderIsMale
                                        ? Colors.white
                                        : Colors.grey.shade200,
                                    border: Border.all(
                                        color: _.genderIsMale
                                            ? Colors.green
                                            : Colors.grey),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Center(
                                    child: Text(
                                      AppString.male,
                                      textAlign: TextAlign.center,
                                      style: AppStyle.mediumRoboto(size: 16),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width / 1.5,
                            child: AppButton(
                              onPress: () {
                                _.submit();
                              },
                              buttonTitle: AppString.submit_button,
                            )),
                        GestureDetector(
                          onTap: () => Get.offNamed(Routes.SignInScreen),
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height / 14),
                            child: Text(
                              AppString.alreadyHAveAccount,
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
