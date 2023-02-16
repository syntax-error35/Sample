// import 'dart:convert';
// import 'package:dio/dio.dart';
//
// class DioExceptions implements Exception {
//   String message = "";
//
//   DioExceptions.fromDioError(DioError dioError) {
//
//     switch (dioError.type) {
//       case DioErrorType.cancel:
//         message = "Request to API server was cancelled";
//         break;
//       case DioErrorType.connectTimeout:
//         message = "Connection timeout with API server";
//         break;
//       case DioErrorType.other:
//         message = "Connection to API server failed due to internet connection";
//         break;
//       case DioErrorType.receiveTimeout:
//         message = "Receive timeout in connection with API server";
//         break;
//       case DioErrorType.response:
//       // message = _handleError(
//       //     dioError.response!.statusCode!.toInt(), dioError.response!.data);
//         message = apiErrorMessage(dioError);
//         break;
//       case DioErrorType.sendTimeout:
//         message = "Send timeout in connection with API server";
//         break;
//       default:
//         message = "Something went wrong";
//         break;
//     }
//   }
//   String apiErrorMessage(exception) {
//     if (exception.runtimeType == DioError) {
//       var dioException = exception as DioError;
//       var error = dioException.response!; // Do something with response
//       // var errorData = ErrorResponse.fromJson(jsonDecode(error.toString()));
//       //
//       // CustomSnackBar.showCustomErrorSnackBar(
//       //     title: "Error", message: errorData.appMessage ?? "");
//       //
//       // return errorData.appMessage ?? "";
//     }
//
//     return "";
//   }
//   @override
//   String toString() => message;
// }