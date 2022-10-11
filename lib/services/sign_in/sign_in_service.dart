import 'package:dio/dio.dart';
import 'package:my_pizza/models/sign_in/sign_in_data_model.dart';
import 'package:my_pizza/models/sign_in/sign_in_model.dart';
import 'package:my_pizza/services/my_services.dart';

class SignInService{


 Future<SignInModel> signInRequest(
     {int? mobile, String? password, String? token, String? endPoint})
  async {

    SignInDataModel signInDataModel=SignInDataModel(mobile: mobile,password: password);
    Response response=await AppService().postRequest(data: signInDataModel.toMap(),endPoint: endPoint);
    return signInModelFromMap(response.data);
  }


}