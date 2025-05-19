import 'package:get/get.dart';

import '../controllers/ekskul_detail_controller.dart';

class EkskulDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EkskulDetailController>(
      () => EkskulDetailController(),
    );
  }
}
