import 'dart:convert';

import 'package:dio/dio.dart';

import '../model/login/login_response_dm.dart';

class DioClient {
  var url = 'http://188.166.223.189/api/v1/';
  final Dio dioObj = Dio(
      //   BaseOptions(
      //   baseUrl: 'http://188.166.223.189/api/v1/',
      // ),
      );
  Map<String, dynamic>? header = {
     'Accept': 'application/json',
    'Content-Type': 'application/json',

  };

  void printResponse(String url, String body, String response) {
    // print('URL : $url');
    // print('BODY : $body');
    // print('RESPONSE : $response');
  }

  Future<dynamic> get(
      {String? endpoint, Map<String, dynamic>? getHeader}) async {
    try {
      Response responseData = await dioObj.get(
        '$url$endpoint',
        options: Options(
          headers: getHeader ?? header,
          //contentType: 'application/json',
        ),
      );
      // print('url $url$endpoint');
      // print('received statusCode ${responseData.statusCode}');
      // print('received statusMsg ${responseData.statusMessage}');
      // print('received response ${responseData.data.runtimeType}');
      // print('received response Data ${responseData.data}');
      //printResponse('${dioObj.options.baseUrl}$endpoint', body, '$responseData');
      return responseData.data;
    } catch (error) {
      print('$url$endpoint');
      print('ERROR $error');
      rethrow;
    }
  }

  Future<dynamic> post(
      {body, String? endpoint, Map<String, dynamic>? postHeader}) async {
    var payload = jsonEncode(body);
    print('payload  $payload');
    try {
      Response responseData = await Dio().post(
        '$url$endpoint',
        options: Options(headers: postHeader ?? header),
        data: payload,
      );
      print(responseData.toString());
      return responseData.data;
    } catch (error) {
      print('$url$endpoint');
      print('ERROR $error');
      rethrow;
    }
  }
  Future<dynamic> postAndCreateUser(
      {Map<String, dynamic>? body, String? endpoint, Map<String, dynamic>? postHeader, String? fileName, String? filePath }) async {
    var imageTempData = FormData.fromMap(body ?? {});
    if (filePath != null) {
      imageTempData.files.add(MapEntry(
          'file_url',
          await MultipartFile.fromFile(
            filePath,
          ),
        ),);
    }
    try {
      Response responseData = await Dio().post(
        '$url$endpoint',
        options: Options(headers: postHeader ?? header),
        data: imageTempData,
      );
      print(responseData.toString());
      return responseData.data;
    } catch (error) {
      print('$url$endpoint');
      print('ERROR $error');
      rethrow;
    }
  }

}
