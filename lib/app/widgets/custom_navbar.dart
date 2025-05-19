import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:madskul/app/modules/ekskul/views/ekskul_view.dart';

class CustomNavbar extends StatelessWidget {
  const CustomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 5,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildNavItem('Jadwal', Icons.calendar_month_outlined, false, () {
            // Arahkan ke jadwal view jika ada
          }),
          _buildEkskulNavItem(),
          _buildNavItemHome('Beranda', Icons.home, true),
          _buildNavItem('Gallery', Icons.photo_library_outlined, false, () {
            // Arahkan ke galeri view jika ada
          }),
          _buildNavItem('Prestasi', Icons.book_outlined, false, () {
            // Arahkan ke prestasi view jika ada
          }),
        ],
      ),
    );
  }

  Widget _buildNavItem(String title, IconData icon, bool isActive, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: isActive ? const Color(0xFF0B2B93) : Colors.grey, size: 24),
          const SizedBox(height: 4),
          Text(
            title,
            style: TextStyle(
              fontSize: 10,
              color: isActive ? const Color(0xFF0B2B93) : Colors.grey,
              fontWeight: isActive ? FontWeight.w500 : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItemHome(String title, IconData icon, bool isActive) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: const Color(0xFF0B2B93),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF0B2B93).withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 6,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: const Icon(Icons.home, color: Colors.white, size: 24),
        ),
        const SizedBox(height: 4),
        const Text(
          'Beranda',
          style: TextStyle(
            fontSize: 10,
            color: Color(0xFF0B2B93),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget _buildEkskulNavItem() {
    return GestureDetector(
      onTap: () {
        Get.to(() => const EkskulView());
      },
      child: _buildNavItem('Ekskul', Icons.notifications_none_outlined, false, () {
        Get.to(() => const EkskulView());
      }),
    );
  }
}
