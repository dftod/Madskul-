import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:madskul/app/routes/app_pages.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final box = GetStorage();

  void login() {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    if (email == "admin" && password == "123") {
      // Simpan status login di GetStorage
      box.write("status", "login");

      // Navigasi ke halaman home
      Get.offAllNamed(Routes.HOMEPAGE);
    } else {
      Get.snackbar(
        "Login Gagal",
        "Username atau password salah",
        backgroundColor: Colors.redAccent,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
