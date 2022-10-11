import 'package:dio/dio.dart';
import 'package:my_pizza/models/verify_otp/verifiy_otp_data_model.dart';
import 'package:my_pizza/models/verify_otp/verify_otp_model.dart';
import 'package:my_pizza/services/my_services.dart';

class VerifyOtpService{
 Future<VerifyOtpModel> verifyOtp(int? mobile, int? otp, String endPoint)
  async {
    VerifyOtpDataModel dataModel =VerifyOtpDataModel(mobile: mobile,otp: otp,);
    Response response=await AppService().postRequest(endPoint: endPoint,data: dataModel.toMap());
    return verifyOtpModelFromMap(response.data);
  }
}