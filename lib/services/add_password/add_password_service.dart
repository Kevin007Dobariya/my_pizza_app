import 'package:dio/dio.dart';
import 'package:my_pizza/constants/app_strings.dart';
import 'package:my_pizza/models/add_password/add_password_data_model.dart';
import 'package:my_pizza/models/add_password/add_password_model.dart';
import 'package:my_pizza/services/my_services.dart';

class AddPasswordService{
 Future<AddPasswordModel> addPasswordRequest(
     {String? userId, String? password, String? token})
  async {
    AddPasswordDataModel dataModel=AddPasswordDataModel(password: password,token:token,userId:userId );
    Response response=await AppService().postRequest(endPoint: AppString.add_password_end_point,data: dataModel.toMap());
    return addPasswordModelFromMap(response.data);
  }
}