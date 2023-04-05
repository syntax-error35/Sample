import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:sample/model/error_dm.dart';
import 'package:sample/widget/show_snackbar.dart';

class HandleError implements Exception{
  String? msg = '';
   void  handleError(error){
   var errorType = error.type;
   if(errorType == DioErrorType.cancel){
     msg = "Request to API server was cancelled";
   }
   else if(errorType == DioErrorType.connectTimeout){
     msg = "Connection timeout with API server";
   }
   if(errorType == DioErrorType.other){
     msg = "NoInternet";
   }
   if(errorType == DioErrorType.receiveTimeout){
     msg = "Receive timeout in connection with API server";
   }
   if(errorType == DioErrorType.sendTimeout){
     msg = "Send timeout in connection with API server";
   }
   if(errorType == DioErrorType.response){
     msg = dioErrorResponse(error);
   }
   else{
     msg = 'Something went wrong';
   }
   ShowSnackbar(msg!).showErrorSnackbar();
  }
  String dioErrorResponse(dioError){
     if(dioError.runtimeType == DioError){
       var errorDio = dioError as DioError;
       var error = errorDio.response;
       print(error.toString());
       var errorData = ErrorDm.fromJson(jsonDecode(error.toString()));
       return errorData.app_message ?? 'ERROR';
     }
     return "Something went wrong";
  }
}