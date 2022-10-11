import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_pizza/constants/app_strings.dart';
import 'package:my_pizza/models/update_profile/update_profile_model.dart';
import 'package:my_pizza/services/update_profile/update_profile_service.dart';
import 'package:my_pizza/utils/sahredpreference/app_prefrence.dart';

class ProfileController extends GetxController {
  late bool genderIsMale=true;
  late String user_id;
  late UpdateProfileModel updateProfileModel;

  bool readOnly=true;
  late TextEditingController firstNameController ;
  late TextEditingController lastNameController ;
  late TextEditingController numberController ;

  int get genderValue{
    return genderIsMale? 1:2;
  }

  void changeGender(bool value) {
    genderIsMale=value;
    update();
  }
  @override
  void onInit() {
    initControllerValue();
  }

  initControllerValue() async {
    firstNameController = TextEditingController(text: AppPreference.getString(AppString.fName));
    lastNameController = TextEditingController(text: AppPreference.getString(AppString.lName));
    numberController = TextEditingController(text: AppPreference.getString(AppString.number));
    user_id= await AppPreference.getString(AppString.user_id) ;
    update();
  }

  setControllerValue(){}
  final formKey = GlobalKey<FormState>();
  Future<void> submit() async {
    if(!readOnly){
      final isValid = formKey.currentState!.validate();
      if (!isValid) {
        return;
      }
      if(isValid){
       await updateProfile();
        initControllerValue();
        if(updateProfileModel.status==1){
          Get.snackbar(
            AppString.success,
            AppString.profile_updated,
            snackPosition: SnackPosition.BOTTOM,
            colorText: Colors.white,
            backgroundColor:Colors.green,
          );
        }

      }
      formKey.currentState!.save();
    }
    readOnly=!readOnly;
    update();
  }

  updateProfile()async{
    updateProfileModel=await UpdateProfileService().updateServiceRequest(user_id, firstNameController.text, lastNameController.text, genderValue);
    AppPreference.set(AppString.fName, updateProfileModel.data!.name);
    AppPreference.set(AppString.lName,  updateProfileModel.data!.lname);
    AppPreference.set(AppString.gender,  updateProfileModel.data!.gender);
    AppPreference.set(AppString.number,  updateProfileModel.data!.mobile);
    update();
  }

}