// ekskul_view.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:madskul/app/routes/app_pages.dart';
import '../controllers/ekskul_controller.dart';
import 'package:madskul/app/widgets/custom_navbar.dart';


class EkskulView extends StatefulWidget {
  const EkskulView({Key? key}) : super(key: key);

  @override
  State<EkskulView> createState() => _EkskulViewState();
}

class _EkskulViewState extends State<EkskulView> {
  final EkskulController controller = EkskulController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0A3365),
        title: const Text(
          'Ekstrakurikuler',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: controller.ekskulList.length,
        itemBuilder: (context, index) {
          return _buildEkskulItem(controller.ekskulList[index]);
        },
      ),
      bottomNavigationBar: const CustomNavbar(),
    );
  }

  Widget _buildEkskulItem(Map<String, dynamic> ekskul) {
    return GestureDetector(
      onTap: () {
        // Navigasi ke detail page menggunakan Get
        Get.toNamed(Routes.EKSKUL_DETAIL, arguments: {
          'title': ekskul['name'],
          'imagePath': ekskul['image'],
          'description': ekskul['description'],
          'schedule': ekskul['schedule'],
          'location': ekskul['location'],
          'memberCount': ekskul['memberCount'],
          'coachName': ekskul['coachName'],
        });
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Judul
          Padding(
            padding: const EdgeInsets.only(left: 4, bottom: 8),
            child: Text(
              ekskul['name'],
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          // Gambar
          Container(
            width: double.infinity,
            height: 150,
            margin: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                ekskul['image'],
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}