import 'package:get/get.dart';

class HomepageController extends GetxController {
  final selectedIndex = 2.obs;

  void changeTab(int index) {
    selectedIndex.value = index;
    switch (index) {
      case 0:
        // Get.to(() => const JadwalView());
        break;
      case 1:
        // Get.to(() => const PesanView());
        break;
      case 2:
        // Home
        break;
      case 3:
        // Get.to(() => const GalleryView());
        break;
      case 4:
        // Get.to(() => const PrestasiView());
        break;
    }
  }

  void navigateToPage(int pageIndex) {
    switch (pageIndex) {
      case 0:
        // Get.to(() => const EkstrakurikulerView());
        break;
      case 1:
        // Get.to(() => const JadwalView());
        break;
      case 2:
        // Get.to(() => const GalleryView());
        break;
      case 3:
        // Get.to(() => const PrestasiView());
        break;
    }
  }

  List<Map<String, dynamic>> getEkstrakurikulerData() {
    return [
      {'name': 'Futsal', 'image': 'assets/images/ekskul1.jpg'},
      {'name': 'Basket', 'image': 'assets/images/ekskul2.jpg'},
      {'name': 'Robotik', 'image': 'assets/images/ekskul3.jpg'},
      {'name': 'Robotik', 'image': 'assets/images/ekskul4.jpg'},
    ];
  }

  List<Map<String, dynamic>> getPrestasiData() {
    return [
      {'title': 'Juara Lomba Futsal', 'image': 'assets/images/prestasi1.jpg'},
      {
        'title': 'Medali Olimpiade Matematika',
        'image': 'assets/images/prestasi2.jpg'
      },
      {
        'title': 'Penghargaan Robotik Nasional',
        'image': 'assets/images/prestasi3.jpg'
      },
    ];
  }
}
