import 'package:dio/dio.dart';
import 'package:my_pizza/constants/app_strings.dart';
import 'package:my_pizza/models/change_password/change_password_data_model.dart';
import 'package:my_pizza/models/change_password/change_password_model.dart';
import 'package:my_pizza/services/my_services.dart';

class ChangePasswordService{
 Future<ChangePasswordModel> changePasswordRequest({String? userId, String? oldPassword, String? newPassword, String? confirmPassword})
  async {
    ChangePasswordDataModel dataModel=ChangePasswordDataModel(userId: userId,confirmPassword: confirmPassword,newPassword: newPassword,oldPassword: oldPassword);
    Response response= await AppService().postRequest(data: dataModel.toMap(),endPoint: AppString.change_password_end_point);
    return changePasswordModelFromMap(response.data);
  }
}