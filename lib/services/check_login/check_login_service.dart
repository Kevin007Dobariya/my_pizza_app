import 'package:dio/dio.dart';
import 'package:my_pizza/constants/app_strings.dart';
import 'package:my_pizza/models/check_login/check_login_data_model.dart';
import 'package:my_pizza/models/check_login/check_login_model.dart';
import 'package:my_pizza/services/my_services.dart';

class CheckLoginService{
 Future<CheckLoginModel> checkLoginRequest( String? userId,String? token) async {
    CheckLoginDataModel dataModel=CheckLoginDataModel(token: token,userId: userId);
    Response response=await AppService().postRequest(data: dataModel.toMap(),endPoint: AppString.check_login_end_point);
    return checkLoginModelFromMap(response.data);
  }
}