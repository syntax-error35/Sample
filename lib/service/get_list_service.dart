import '../network/dio_Client.dart';

class GetListService{
  getList({String? endpointUrl, Map<String, dynamic>? header}) async {
    var dioInstance = DioClient();
    var response = await dioInstance.get(endpoint: endpointUrl, getHeader: header);
    return response;
  }
}