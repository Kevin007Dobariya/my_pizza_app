import 'package:dio/dio.dart';
import 'package:my_pizza/models/sign_up/sign_up_data_model.dart';
import 'package:my_pizza/models/sign_up/sign_up_model.dart';
import 'package:my_pizza/services/my_services.dart';

class SignUpService {
  // late Dio dio=Dio();
  Future<SignUpModel> signUpRequest(
      {String? endPoint,
      String? name,
      String? mobile,
      String? lname,
      String? token,
      String? username,
      String? dob,
      int? gender}) async {
    print('test 2');
    SignUpDataModel dataModel = SignUpDataModel(
        name: name,
        mobile: mobile,
        lname: lname,
        token: token,
        dob: dob,
        gender: gender,
        username: username);
    // print('datamodel========$datamodel');
    Response response =/*await dio.post('http://lefpro.com/pizzashop/posts/signup',data: dataModel.toMap()) ;*/
        await AppService().postRequest(endPoint: endPoint, data: dataModel.toMap());
    print('from sign up service ==${response.data}');
    return signUpModelFromMap(response.data);
  }
}
