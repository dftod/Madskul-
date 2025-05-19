import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:madskul/app/routes/app_pages.dart';

class SplashController extends GetxController {
  final getStorage = GetStorage();

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

@override
void onReady() {
  super.onReady();
  print('onReady SplashController');

  Future.delayed(const Duration(seconds: 3), () {
    final status = getStorage.read("status");
    if (status != null && status != "") {
      Get.offAllNamed(Routes.HOMEPAGE);
    } else {
      Get.offAllNamed(Routes.WELCOME);
    }
  });
}


  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
