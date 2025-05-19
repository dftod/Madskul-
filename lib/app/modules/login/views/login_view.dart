import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            // Grid background telah dihapus

            Column(
              children: [
                // Top semi-circle blue section
                ClipPath(
                  clipper: HalfCircleClipper(),
                  child: Container(
                    height: 190,
                    width: double.infinity,
                    color: const Color(0xFF0D1B63),
                    child: const Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 60),

                // Username and Password fields
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                          controller: controller.emailController,
                          style: const TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(horizontal: 20),
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

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

                      const SizedBox(height: 20),

                      // Login button
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: controller.login,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF0D1B63),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          child: const Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 16),

                      // Register link
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Tidak punya akun?',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Get.toNamed('/register');
                              // Navigate to register page
                            },
                            child: const Text(
                              'Register',
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
      size.height * 0.7,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
