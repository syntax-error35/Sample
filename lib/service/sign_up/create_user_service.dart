import 'dart:convert';

import 'package:sample/model/signup/signup_dm.dart';
import 'package:sample/network/dio_Client.dart';
import 'package:dio/dio.dart';

class CreateUserService {
  createUserRequest(Map<String, dynamic> userInfo, String filePath, String filename) async {
    var dioInstance = DioClient();
    var response = await dioInstance.postAndCreateUser(body: userInfo, endpoint: 'registration', filePath: filePath, fileName: filename);
    return response;
  }
}
