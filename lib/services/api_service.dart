

import 'dart:developer';

import 'package:dio/dio.dart';
class ApiService{
  Future<dynamic>getMethot(String url)async{
    Dio dio=Dio();
    dio.options.headers['content-Type']='aplication/json';
    return await dio.get(
      url,options: Options(responseType: ResponseType.json,method: 'Get'),).then((value) {
    
    log(value.toString());
    return value;
      });
  }
}