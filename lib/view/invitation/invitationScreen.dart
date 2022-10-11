import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_pizza/constants/app_strings.dart';
import 'package:my_pizza/constants/text_style.dart';
import 'package:my_pizza/controller/invitation/invitation_controller.dart';
import 'package:my_pizza/routes/name_routes.dart';
import 'package:my_pizza/utils/common_widgets/app_button.dart';
import 'package:my_pizza/utils/common_widgets/custom_text_field.dart';
import 'package:my_pizza/utils/sahredpreference/app_prefrence.dart';
import 'package:my_pizza/utils/validation/textfield_validation.dart';

class InvitationScreen extends StatelessWidget {
  const InvitationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<InvitationController>(
        init: InvitationController(),
        builder: (_) {
      return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              margin: AppStyle.appAllPadding20.copyWith(top: 70),
              child: Form(
                key: _.formKey,
                child: Column(
                  children: [
                    Text(
                      AppString.wish_for_more,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: AppStyle.boldRoboto(size: 24),
                    ),

                    Padding(
                      padding: AppStyle.appSymmetricPaddingV25,
                      child: Text(
                        AppString.benefits_description,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: AppStyle.mediumRoboto(),
                      ),
                    ),
                    customTextField(
                        maxLength: 10,
                        validation: (value) => validateMobile(value),
                        labelText: AppString.mobile_no,
                        hintText: AppString.mobile_no),
                    SizedBox(height: 10,),
                    Container(
                        width: double.infinity,
                        child: AppButton(
                          onPress: () {
                            _.submit();
                          },
                          buttonTitle: AppString.apply,
                        )),
                    SizedBox(height: 10,),
                    GestureDetector(
                      onTap: () {
                        AppPreference.set(AppString.logged, true);
                        Get.offNamed(Routes.DashboardScreen);
                      },
                      child: Text(
                        AppString.skip_this,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: AppStyle.mediumRoboto(color: Colors.green),
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
