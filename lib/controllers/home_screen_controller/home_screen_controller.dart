import 'package:get/get.dart';
import 'package:qrauthsuer/utilities/api_utility/api_utility.dart';

class HomeScreenController extends GetxController {
  bool isLoading = true;
  String token = "";
  var userDetails;

  ApiUtility apiUtility = ApiUtility();

  Future<void> getUserDetails() async {
    var response = await apiUtility.dioGet(token);
    userDetails = response;
    isLoading = false;
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    token = Get.arguments;
    getUserDetails();
    super.onInit();
  }
}
