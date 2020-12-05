import 'package:dio/dio.dart';


class DioInterceptors extends Interceptor {

  @override
  Future onRequest(RequestOptions options) async {
    print('this is request');
    print(options.uri);
    return options;
  }

  @override
  Future onResponse(Response response) async {
    print('this is response');

   print(response);
   return response;
  }

  @override
  Future onError(DioError err) async {
    print('this is error');
    // print(err);
    if(err.response.statusCode==404){
      print("object");
    }
  }
}