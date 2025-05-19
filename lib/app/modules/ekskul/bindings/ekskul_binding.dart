import 'package:get/get.dart';

import '../controllers/ekskul_controller.dart';

class EkskulBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EkskulController>(
      () => EkskulController(),
    );
  }
}
