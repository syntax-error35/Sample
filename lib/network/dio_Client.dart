import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';

import '../model/login/login_response_dm.dart';

class DioClient {
  final Dio dioObj = Dio(
      //   BaseOptions(
      //   baseUrl: 'http://188.166.223.189/api/v1/',
      // ),
      );
  Map<String, dynamic>? header = {
   // 'Accept': 'application/json',
    'Content-Type': 'application/json',
  };

  void printResponse(String url, String body, String response) {
    print('URL : $url');
    print('BODY : $body');
    print('RESPONSE : $response');
  }

  Future<dynamic> post({ body, String? endpoint, Map<String, dynamic>? postHeader}) async {
    var url = 'http://188.166.223.189/api/v1/';
    var payload = jsonEncode(body);
    print('payload  $payload');
    print('header $postHeader');
    try {
      Response responseData = await dioObj.post(
        '$url$endpoint',
        options: Options(headers: postHeader ?? header),
        data: payload,
      );
      print(responseData.toString());
      //printResponse('${dioObj.options.baseUrl}$endpoint', body, '$responseData');
      return responseData.data;
    } catch (error) {
      print('$url$endpoint');
      print('ERROR $error');
      rethrow;
    }
  }
}
