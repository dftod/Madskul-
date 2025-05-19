// File: lib/app/modules/ekstrakurikuler/views/ekskul_detail_view.dart

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/ekskul_detail_controller.dart';

class EkskulDetailView extends GetView<EkskulDetailController> {
  const EkskulDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get parameters from controller
    final String title = controller.title;
    final String imagePath = controller.imagePath;
    final String description = controller.description;
    final String schedule = controller.schedule;
    final String location = controller.location;
    final String memberCount = controller.memberCount;
    final String coachName = controller.coachName;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF0A2647),
        foregroundColor: Colors.white,
        title: const Text('Ekstrakurikuler'),
        centerTitle: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Image
            SizedBox(
              height: 200,
              width: double.infinity,
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),

            // Title
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // Description
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                description,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black87,
                  height: 1.5,
                ),
              ),
            ),

            const SizedBox(height: 24),

            // Info Cards
            _buildInfoCard(
              icon: Icons.access_time,
              title: 'Jadwal',
              content: schedule,
              iconColor: Colors.blue,
            ),
            
            _buildInfoCard(
              icon: Icons.location_on,
              title: 'Lokasi',
              content: location,
              iconColor: Colors.red,
            ),
            
            _buildInfoCard(
              icon: Icons.people,
              title: 'Anggota',
              content: memberCount,
              iconColor: Colors.green,
            ),
            
            _buildInfoCard(
              icon: Icons.person,
              title: 'Pembimbing',
              content: coachName,
              iconColor: Colors.purple,
            ),

            const SizedBox(height: 24),

            // Register Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    // Action for registration
                    controller.registerNow();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF0A2647),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Daftar Sekarang',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 70), // Space for bottom navigation bar
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildInfoCard({
    required IconData icon,
    required String title,
    required String content,
    required Color iconColor,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: iconColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              icon,
              color: iconColor,
              size: 24,
            ),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                content,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedItemColor: const Color(0xFF0A2647),
      unselectedItemColor: Colors.grey,
      currentIndex: 2, // Home is selected
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today),
          label: 'Jadwal',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.dashboard),
          label: 'Daftar',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people),
          label: 'Gallery',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.emoji_events),
          label: 'Prestasi',
        ),
      ],
      onTap: controller.navigateBottomBar,
    );
  }
}