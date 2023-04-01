import 'dart:developer';


import 'package:dio/dio.dart';

class DioServices {
  Future<dynamic> getMedhut(String url) async {
    Dio dio = Dio();
    return await dio.get(
      url,
      options: Options(responseType: ResponseType.json, method: 'Get'),
    ).then((responce){
      print('***************');
      log(responce.toString());
      return responce;
    });
  }
}
