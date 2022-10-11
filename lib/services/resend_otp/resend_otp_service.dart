import 'package:dio/dio.dart';
import 'package:my_pizza/models/resend_otp/resend_otp_data_model.dart';
import 'package:my_pizza/models/resend_otp/resend_otp_model.dart';

import '../my_services.dart';

class ResendOtpService {
  Future<ResendOtpModel> resendOtpRequest({String? endPoint, String? mobile, String? token,}) async {
    print('test resend otp');
    ResendOtpDataModel dataModel = ResendOtpDataModel(token: token,mobile: mobile);
    Response response = await AppService().postRequest(endPoint: endPoint, data: dataModel.toMap());
    print('from sign up service ==${response.data}');
    return resendOtpModelFromMap(response.data);
  }
}
