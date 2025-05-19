import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  // Text controllers for the form fields
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  // Register function
  void register() {
    // Validate form fields
    if (usernameController.text.isEmpty ||
        passwordController.text.isEmpty ||
        emailController.text.isEmpty ||
        phoneController.text.isEmpty) {
      Get.snackbar(
        'Error',
        'Please fill in all fields',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return;
    }

    // Validate email format
    if (!GetUtils.isEmail(emailController.text)) {
      Get.snackbar(
        'Error',
        'Please enter a valid email address',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return;
    }

    // Validate phone format
    if (!GetUtils.isPhoneNumber(phoneController.text)) {
      Get.snackbar(
        'Error',
        'Please enter a valid phone number',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return;
    }

    // Implement registration logic here
    // For example, API call to register the user
    
    // Show success message
    Get.snackbar(
      'Success',
      'Registration successful!',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.green,
      colorText: Colors.white,
    );
    
    // Navigate to login page
    Future.delayed(const Duration(seconds: 2), () {
      Get.back(); // Navigate back to login page
    });
  }

  @override
  void onClose() {
    // Dispose controllers when the controller is closed
    usernameController.dispose();
    passwordController.dispose();
    emailController.dispose();
    phoneController.dispose();
    super.onClose();
  }
}