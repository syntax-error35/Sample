import 'package:sample/model/otp/otpDm.dart';

import '../network/dio_Client.dart';

class VerifyOtpService{
  verifyOtpRequest(OtpDm otpData, Map<String, dynamic> header) async {
    print('otp ${otpData.otp}');
    print('header $header');
    var dioInstance = DioClient();
    var response = await dioInstance.post(endpoint: 'verify-otp', body: otpData, postHeader: header);
    return response;
  }
}