import 'package:sample/model/login/login_dm.dart';
import 'package:sample/network/dio_Client.dart';

class LoginService{
  logInRequest( LoginDm credentials) async{
   print('Credentials email ${credentials.email}');
   print('Credentials pass ${credentials.password}');
    var dioInstance = DioClient();
    var response = await dioInstance.post(endpoint: 'login', body: credentials);
    return response;
  }
}