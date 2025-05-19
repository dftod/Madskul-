import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Top semi-circle blue section
            ClipPath(
              clipper: HalfCircleClipper(),
              child: Container(
                height: 150,
                width: double.infinity,
                color: const Color(0xFF0D1B63),
                child: const Center(
                  child: Text(
                    'Register',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            
            const SizedBox(height: 40),
            
            // Form fields
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Username field
                  const Text(
                    'Username',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xFF0D1B63),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: TextField(
                      controller: controller.usernameController,
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 16),
                  
                  // Password field
                  const Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xFF0D1B63),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: TextField(
                      controller: controller.passwordController,
                      obscureText: true,
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 16),
                  
                  // Email field
                  const Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xFF0D1B63),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: TextField(
                      controller: controller.emailController,
                      keyboardType: TextInputType.emailAddress,
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 16),
                  
                  // No. Telepon field
                  const Text(
                    'No. Telepon',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xFF0D1B63),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: TextField(
                      controller: controller.phoneController,
                      keyboardType: TextInputType.phone,
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 30),
                  
                  // Register button
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: controller.register,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF0D1B63),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: const Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 16),
                  
                  // Login link
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Sudah punya akun?',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.toNamed('/login');
                          // Navigate to login page
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            color: Color(0xFF0D1B63),
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Custom clipper for half circle shape
class HalfCircleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height * 0.7);
    path.quadraticBezierTo(
      size.width / 2, 
      size.height * 1.3, 
      size.width, 
      size.height * 0.7
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}