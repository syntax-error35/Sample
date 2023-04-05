import 'package:get/get.dart';
import 'package:sample/error%20handling/handle_error.dart';
import 'package:sample/model/greeting_item/greeting_item_dm.dart';
import 'package:sample/service/greeting_item/get_greeting_item_service.dart';
import 'package:flutter/material.dart';

class GreetingItemController extends GetxController with HandleError {
  final TextEditingController greetingController = TextEditingController();
  List<Map<String, dynamic>> dataList = [];
  Map<String, dynamic> getReqHeader = {
    'Accept': 'application/json',
    'Authorization':
        'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjBlMTIyYjRlMjg1NDI4MGVhN2EzMTJjNjc2MDE1N2Q0NmQ0M2RhYzYyOTZjNDU0MDQ2ZTUyMjRlNjViNTZhYjkzNzljOGE0MzBhZDgxOTVlIn0.eyJhdWQiOiIzIiwianRpIjoiMGUxMjJiNGUyODU0MjgwZWE3YTMxMmM2NzYwMTU3ZDQ2ZDQzZGFjNjI5NmM0NTQwNDZlNTIyNGU2NWI1NmFiOTM3OWM4YTQzMGFkODE5NWUiLCJpYXQiOjE2NzY0MzgxNjUsIm5iZiI6MTY3NjQzODE2NSwiZXhwIjoxNzA3OTc0MTY1LCJzdWIiOiIxMjEiLCJzY29wZXMiOltdfQ.eECP75-w_odl0FUKP7tiB0xYTCexpUeZsL8VNaXKAeFFbxT-XtMf1D51rrOXdYhqisgGN711yPnY_k1ANhIstJ5xhEANhlMYHbwOMEu8hXJCXyyVW5YcyThNPciTqjbz_iySpgh1j4HhptYfm15U3vyQ9VX91w1HWpgTflj1Ne0mQetafIztb7xbqGi4BydUeag4QVpF1qfGTzpqAV08ZwjHOEjQgRwAorg8F5-A71sZaW5W8HE7qzS8WDnLw_PcMFDJGslX0Us-I8Saa-PgdS5PfRCV5Ipkuy1Eq0aAGHtLZMUC5pHgttMeFOlPq99qZNCuJFPdzegBM2S7S2fJy2xbnDNeY0Afw-TWxgRXHP1nn_C9-6tUoUTfPqgWbSa8wcBaJ1qSvlFdcheZDLX5OQBNHNXE7pKGdcq7216H5KevGZuz2o48q1RgfgH2PjXFfDe_5RyniJ4ZCDrFtTZBSmR8mklJuZBEGeGsVNHGXbgN10q90_siypMl_2628n0M8z235t1OjoNM7vvDsUCCIvnlk0E_BeTt8ZuDJVXt9vgeSV3ot5fRvRVv_qM0ts2MilTBNmApYO8NrsIMxbgEwiaTwL3NZYgnYxF8Uf1kh0oKIKkCDEcaefSXEpCn4AvAGA6JuL82E8JLKIDHuB23qLlCGBOZkERWx_-g0I8AaIc',
  };
  List<Map<String, dynamic>> filteredDataList = [];
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    getGiftList();
  }

  getGiftList() async {
    try {
      var giftListResponse = await GetGiftItemService()
          .getGiftItemList(endpointUrl: 'gift-items', header: getReqHeader)
          .catchError(handleError);
      print(giftListResponse);
      if (giftListResponse != null) {
        var responseData = GreetingItemDm.fromJson(giftListResponse);

        for (int i = 0; i < responseData.data!.length; i++) {
          dataList.add({
            'title': responseData.data?[i].title,
            'image': responseData.data?[i].image,
          });
        }
        update();
      }
    } catch (e) {
      rethrow;
    }
  }

  filterSearchResults(String value){

// filteredDataList = dataList.map().toList();
//
}

}
