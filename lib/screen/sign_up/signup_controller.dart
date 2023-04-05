
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart' hide FormData, MultipartFile;
import 'package:sample/error%20handling/handle_error.dart';
import 'package:sample/model/designation/designation_list_dm.dart';
import 'package:sample/model/line_manager/line_manager_list_dm.dart';
import 'package:sample/model/role/role_list_dm.dart';
import 'package:sample/model/signup/signup_dm.dart';
import 'package:sample/model/signup/signup_response_dm.dart';
import 'package:sample/screen/home/home_screen.dart';
import 'package:sample/service/sign_up/create_user_service.dart';
import 'package:sample/service/get_list_service.dart';

import '../../model/department/dept_list_dm.dart';
import '../../widget/show_snackbar.dart';

class SignUpController extends GetxController with HandleError {
  TextEditingController nameController = TextEditingController();
  TextEditingController dateOfBirth = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController imageController = TextEditingController();

  int? deptValue;
  int? designationValue;
  int? roleValue;
  int? lineManagerValue;

  bool nameValidated = false;
  bool emailValidated = false;
  bool passValidated = false;
  bool isManager = false;

  Map<String, dynamic> deptListMap = {};
  Map<String, dynamic> designationListMap = {};
  Map<String, dynamic> roleListMap = {};
  Map<String, dynamic> lineManagerListMap = {};

  String inputValue = '';
  String? uploadedFilePath;
  String? uploadedFileName;

  @override
  void onReady() {
    getDeptList();
    getDesignationList();
    getLineManagerList();
    getRoleList();
    super.onReady();
  }

  @override
  void onClose() {
    nameController.dispose();
    dateOfBirth.dispose();
    emailController.dispose();
    phoneController.dispose();
    addressController.dispose();
    passController.dispose();
    imageController.dispose();
    super.onClose();
  }

  Map<String, dynamic> getReqHeader = {
    'Accept': 'application/json',
    'Authorization':
        'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjBlMTIyYjRlMjg1NDI4MGVhN2EzMTJjNjc2MDE1N2Q0NmQ0M2RhYzYyOTZjNDU0MDQ2ZTUyMjRlNjViNTZhYjkzNzljOGE0MzBhZDgxOTVlIn0.eyJhdWQiOiIzIiwianRpIjoiMGUxMjJiNGUyODU0MjgwZWE3YTMxMmM2NzYwMTU3ZDQ2ZDQzZGFjNjI5NmM0NTQwNDZlNTIyNGU2NWI1NmFiOTM3OWM4YTQzMGFkODE5NWUiLCJpYXQiOjE2NzY0MzgxNjUsIm5iZiI6MTY3NjQzODE2NSwiZXhwIjoxNzA3OTc0MTY1LCJzdWIiOiIxMjEiLCJzY29wZXMiOltdfQ.eECP75-w_odl0FUKP7tiB0xYTCexpUeZsL8VNaXKAeFFbxT-XtMf1D51rrOXdYhqisgGN711yPnY_k1ANhIstJ5xhEANhlMYHbwOMEu8hXJCXyyVW5YcyThNPciTqjbz_iySpgh1j4HhptYfm15U3vyQ9VX91w1HWpgTflj1Ne0mQetafIztb7xbqGi4BydUeag4QVpF1qfGTzpqAV08ZwjHOEjQgRwAorg8F5-A71sZaW5W8HE7qzS8WDnLw_PcMFDJGslX0Us-I8Saa-PgdS5PfRCV5Ipkuy1Eq0aAGHtLZMUC5pHgttMeFOlPq99qZNCuJFPdzegBM2S7S2fJy2xbnDNeY0Afw-TWxgRXHP1nn_C9-6tUoUTfPqgWbSa8wcBaJ1qSvlFdcheZDLX5OQBNHNXE7pKGdcq7216H5KevGZuz2o48q1RgfgH2PjXFfDe_5RyniJ4ZCDrFtTZBSmR8mklJuZBEGeGsVNHGXbgN10q90_siypMl_2628n0M8z235t1OjoNM7vvDsUCCIvnlk0E_BeTt8ZuDJVXt9vgeSV3ot5fRvRVv_qM0ts2MilTBNmApYO8NrsIMxbgEwiaTwL3NZYgnYxF8Uf1kh0oKIKkCDEcaefSXEpCn4AvAGA6JuL82E8JLKIDHuB23qLlCGBOZkERWx_-g0I8AaIc',
  };

  String? passValidator(String value) {
    if (!GetUtils.hasCapitalletter(value)) {
      return '- A mix of uppercase & lowercase characters';
    } else if (GetUtils.isAlphabetOnly(value)) {
      return '- At least one number';
    }
    else if (GetUtils.isLengthLessThan(value, 8)) {
      return '- At least 8 characters';
    } else {
      passValidated = true;
      return null;
    }
  }

  String? emailValidator(String value) {
    if (GetUtils.isEmail(value) && value.contains('@bat')) {
      emailValidated = true;
      return null;
    } else {
      return 'Invalid Email';
    }
  }

  getDeptList() async {

    try {
      var deptListResponse = await GetListService()
          .getList(header: getReqHeader, endpointUrl: 'departments')
          .catchError(handleError);
      print('deptListResponse $deptListResponse');
      if (deptListResponse != null) {
        var responseData = DeptListDm.fromJson(deptListResponse);
        // print(responseData.toString());
        for (int i = 0; i < responseData.data!.length; i++) {
          deptListMap[responseData.data?[i].name ?? ''] =
              responseData.data?[i].id;
        }
        // update();
        print('deptList $deptListMap');
      }
    } catch (e) {
      rethrow;
    }
  }

  getDesignationList() async {
    try {
      var designationListResponse = await GetListService()
          .getList(endpointUrl: 'designations', header: getReqHeader)
          .catchError(handleError);

      update();
      if (designationListResponse != null) {
        print(
            'print when designationListResponse != null $designationListResponse');
        var responseData = DesignationListDm.fromJson(designationListResponse);
        print(responseData.toString());
        for (int i = 0; i < responseData.data!.length; i++) {
          designationListMap[responseData.data?[i].name ?? ''] =
              responseData.data?[i].id ?? 0;
        }
        print('designationList $designationListMap');
      }
    } catch (e) {
      rethrow;
    }
  }

  getRoleList() async {
    try {
      var roleListResponse = await GetListService()
          .getList(endpointUrl: 'roles', header: getReqHeader)
          .catchError(handleError);
      update();
      if (roleListResponse != null) {
        var responseData = RoleListDm.fromJson(roleListResponse);
        print(responseData.toString());
        for (int i = 0; i < responseData.data!.length; i++) {
          roleListMap[responseData.data?[i].name ?? ''] =
              responseData.data?[i].id ?? 0;
        }
        print('roleList $roleListMap');
      }
    } catch (e) {
      rethrow;
    }
  }

  getLineManagerList() async {
    try {
      var lineManagerListResponse = await GetListService()
          .getList(
            endpointUrl: 'get-line-manager',
          )
          .catchError(handleError);
      update();
      if (lineManagerListResponse != null) {
        var responseData = LineManagerListDm.fromJson(lineManagerListResponse);
        print(responseData.toString());
        for (int i = 0; i < responseData.data!.length; i++) {
          lineManagerListMap[responseData.data?[i].full_name ?? ''] =
              responseData.data?[i].id ?? 0;
        }
        print('roleList $lineManagerListMap');
      }
    } catch (e) {
      rethrow;
    }
  }

  managerStatusTrue() {
    isManager = true;
    update();
  }

  managerStatusFalse() {
    isManager = false;
    update();
  }

  pickImageFile() async {
    FilePickerResult? res = await FilePicker.platform.pickFiles();
    if (res != null) {
      PlatformFile uploadedFile = res.files.single;
      uploadedFilePath = uploadedFile.path;
      uploadedFileName = uploadedFilePath?.split('/').last;
      imageController.text = uploadedFileName ?? 'Please select a file';
      update();
    }
  }

  submitResponseAndCreateUser() async {
    Map<String,dynamic> userData = SignupDm(
      email: emailController.text,
      password: passController.text,
      phone_number: phoneController.text,
      address: addressController.text,
      full_name: nameController.text,
      date_of_birth: dateOfBirth.text,
      department_id: deptValue,
      designation: designationValue,
      role_id: roleValue,
      line_manager_id: lineManagerValue,
    ).toJson();


    try {
      var signUpResponse = await CreateUserService()
          .createUserRequest( userData, uploadedFilePath ?? '', uploadedFileName ?? '' )
          .catchError(handleError);
      // update();
      if (signUpResponse != null) {
        var responseData = SignupResponseDm.fromJson(signUpResponse);
        if (responseData.code == 200) {
          Get.to(() => const HomeScreen());
        }
      }
    } catch (e) {
      print('Error while creating user $e');
      rethrow;
    }
  }
}
