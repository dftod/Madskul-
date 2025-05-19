import 'package:flutter/material.dart';
import 'package:madskul/app/widgets/custom_navbar.dart';

class HOMEPAGE extends StatelessWidget {
  const HOMEPAGE({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: const CustomNavbar(), // ✅ Pakai custom navbar
      body: Column(
        children: [
          // Header
          Container(
            width: double.infinity,
            height: 184,
            decoration: const BoxDecoration(
              color: Color(0xFF0B2B93),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Selamat Datang',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'User',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 30,
                  height: 30,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.person,
                    color: Color(0xFF0B2B93),
                    size: 20,
                  ),
                ),
              ],
            ),
          ),

          // Main Content
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Category Icons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildCategoryTile('Ekstrakurikuler', Icons.sports_basketball_outlined),
                        _buildCategoryTile('Jadwal', Icons.calendar_month_outlined),
                        _buildCategoryTile('Galeri', Icons.photo_library_outlined),
                        _buildCategoryTile('Prestasi', Icons.emoji_events_outlined),
                      ],
                    ),
                    const SizedBox(height: 24),

                    const Text(
                      'Ekstrakurikuler Terpopuler',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 12),

                    SizedBox(
                      height: 173,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          _buildImageCard('assets/ekskul1.png'),
                          const SizedBox(width: 10),
                          _buildImageCard('assets/ekskul2.png'),
                          const SizedBox(width: 10),
                          _buildImageCard('assets/ekskul3.png'),
                          const SizedBox(width: 10),
                          _buildImageCard('assets/ekskul4.png'),
                        ],
                      ),
                    ),

                    const SizedBox(height: 24),

                    const Text(
                      'Prestasi Terbaru',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 12),

                    SizedBox(
                      height: 173,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          _buildPrestasiCard('assets/prestasi1.png', ''),
                          const SizedBox(width: 10),
                          _buildPrestasiCard('assets/prestasi2.png', ''),
                          const SizedBox(width: 10),
                          _buildPrestasiCard('assets/prestasi3.png', ''),
                          const SizedBox(width: 10),
                          _buildPrestasiCard('assets/prestasi4.png', ''),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryTile(String title, IconData icon) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Icon(icon, size: 30, color: Colors.grey.shade700),
          ),
        ),
        const SizedBox(height: 5),
        Text(title, style: const TextStyle(fontSize: 11)),
      ],
    );
  }

  Widget _buildImageCard(String imagePath) {
    return Container(
      width: 252,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildPrestasiCard(String imagePath, String title) {
    return Container(
      width: 252,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      alignment: Alignment.bottomLeft,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.transparent,
              Colors.black.withOpacity(0.7),
            ],
          ),
        ),
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
