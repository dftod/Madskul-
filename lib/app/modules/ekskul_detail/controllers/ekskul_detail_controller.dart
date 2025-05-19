// File: lib/app/modules/ekstrakurikuler/controllers/ekskul_detail_controller.dart

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EkskulDetailController extends GetxController {
  // Properties that will be filled based on which extracurricular activity is selected
  late String title;
  late String imagePath;
  late String description;
  late String schedule;
  late String location;
  late String memberCount;
  late String coachName;

  @override
  void onInit() {
    super.onInit();
    
    // Get the data passed from the previous screen
    Map<String, dynamic> args = Get.arguments ?? {};
    
    // Set default values in case some args are missing
    title = args['title'] ?? 'Ekstrakurikuler';
    imagePath = args['imagePath'] ?? 'assets/images/ekstrakul/default.jpg';
    description = args['description'] ?? 
      'Kegiatan ekstrakurikuler ini menyediakan kesempatan bagi siswa untuk mengembangkan potensi dan minat mereka di luar kegiatan akademik.';
    schedule = args['schedule'] ?? 'Belum ditentukan';
    location = args['location'] ?? 'Belum ditentukan';
    memberCount = args['memberCount'] ?? '0 Anggota';
    coachName = args['coachName'] ?? 'Belum ditentukan';
  }

  // Function to handle registration
  void registerNow() {
    // TODO: Implement registration logic
    Get.snackbar(
      'Pendaftaran', 
      'Anda telah mendaftar untuk ekstrakurikuler $title',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: const Color(0xFF0A2647),
      colorText: const Color(0xFFFFFFFF),
    );
  }

  // Function to handle bottom navigation bar
  void navigateBottomBar(int index) {
    switch (index) {
      case 0: // Jadwal
        Get.toNamed('/jadwal');
        break;
      case 1: // Daftar
        Get.toNamed('/daftar');
        break;
      case 2: // Home
        Get.offAllNamed('/home');
        break;
      case 3: // Gallery
        Get.toNamed('/gallery');
        break;
      case 4: // Prestasi
        Get.toNamed('/prestasi');
        break;
    }
  }
}