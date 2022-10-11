import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_pizza/constants/app_strings.dart';
import 'package:my_pizza/constants/text_style.dart';
import 'package:my_pizza/controller/profile/profile_controller.dart';
import 'package:my_pizza/routes/name_routes.dart';
import 'package:my_pizza/utils/common_widgets/app_button.dart';
import 'package:my_pizza/utils/common_widgets/common_appbar.dart';
import 'package:my_pizza/utils/common_widgets/custom_text_field.dart';
import 'package:my_pizza/utils/validation/textfield_validation.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
       init: ProfileController(),
        builder: (_) {
      return SafeArea(
        child: Scaffold(
          appBar: CommonAppBar(title: AppString.profile),
          body: Form(
            key: _.formKey,
            child: SingleChildScrollView(
              child: Container(
                margin: AppStyle.appAllPadding15,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: customTextField(
                            styleColor: _.readOnly?Colors.grey.shade400:null,
                            readOnly: _.readOnly,
                            controller: _.firstNameController,
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
                            styleColor: _.readOnly?Colors.grey.shade400:null,
                            readOnly: _.readOnly,
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
                      styleColor: Colors.grey.shade400,
                      controller: _.numberController,
                      readOnly: true,
                      textInputType: TextInputType.number,
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
                              _.readOnly?null: _.changeGender(false);                          },
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
                                  style: AppStyle.mediumRoboto(size: 16,color:  _.readOnly?Colors.grey.shade400: null),
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
                             _.readOnly?null: _.changeGender(true);
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
                                  style: AppStyle.mediumRoboto(size: 16,color:  _.readOnly?Colors.grey.shade400: null),
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
                    Row(
                      children: [
                        Expanded(
                          flex: 6,
                          child: Container(
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width / 1.5,
                              child: AppButton(
                                onPress: () {
                                 Get.toNamed(Routes.ChangePasswordScreen);
                                },
                                buttonTitle: AppString.change_password,
                              )),
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          flex: 3,
                          child: AppButton(
                            onPress: () {
                              _.submit();
                            },
                            buttonTitle: _.readOnly==true?AppString.edit:AppString.save,
                          ),
                        )
                      ],
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
