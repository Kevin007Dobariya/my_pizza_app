import 'package:dio/dio.dart';
import 'package:my_pizza/constants/app_strings.dart';
import 'package:my_pizza/models/update_profile/update_profile_data_model.dart';
import 'package:my_pizza/models/update_profile/update_profile_model.dart';
import 'package:my_pizza/services/my_services.dart';

class UpdateProfileService{
 Future<UpdateProfileModel> updateServiceRequest( String? userId,String? name,String? lname,int gender)
  async {
     UpdateProfileDataModel dataModel=UpdateProfileDataModel(userId: userId,name: name,lname: lname,gender: gender );
     Response response= await AppService().postRequest(data: dataModel.toMap(),endPoint: AppString.update_profile_end_point);
     return updateProfileModelFromMap(response.data);
  }
}