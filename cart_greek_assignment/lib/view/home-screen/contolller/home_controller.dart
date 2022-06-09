import 'package:cart_greek_assignment/model/get_data_response_model.dart';
import 'package:cart_greek_assignment/provider/PackagesDetailsApi.dart';
import 'package:get/get.dart';

class PackageController extends GetxController {
  GetDataResponseModel? getDataResponseModel;

  RxBool isDrawerOpen = false.obs;
  RxBool isDrawerClose = true.obs;

  @override
  void onInit() async {
    super.onInit();
    await fetchData();
  }

  fetchData() async {
    getDataResponseModel = await PackagesDetailsAPI.getPackagesDetails();
    update();
  }

  drawerOpenCloseValid() {
    isDrawerOpen.value = !isDrawerOpen.value;
    isDrawerClose.value = !isDrawerClose.value;
  }
}
