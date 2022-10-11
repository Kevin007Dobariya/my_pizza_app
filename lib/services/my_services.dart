import 'package:dio/dio.dart';
import 'package:my_pizza/constants/app_strings.dart';

class AppService {
   Dio _dio=Dio(BaseOptions(
       baseUrl: AppString.baseUrl
   ))..interceptors.add(MyInterceptor());


  Future<Response> getRequest(String endPoint) async {
    Response response;

    try {
      response = await _dio.get(endPoint);
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }

    return response;
  }

  Future<Response> postRequest({String? endPoint, dynamic data,}) async {

    print('test 5 $data');
    Response response;
    try {
      response = await _dio.post(endPoint!, data: data);
      print('test 6 ${response.data}');

    } on DioError catch (e)
      {
        throw Exception(e.message);
      }

    return response;
    }

}


class MyInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print('REQUEST[${options.method}] => PATH: ${options.path}');
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print(
      'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}',
    );
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    print(
      'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}',
    );
    return super.onError(err, handler);
  }
}