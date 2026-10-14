import 'package:flutter/material.dart';
import 'about_screen.dart';
import '../widgets/action_buttons.dart';
import '../widgets/profile_info.dart';
import '../widgets/profile_header.dart';
import '../widgets/social_media_row.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        centerTitle: true,
        actions: [
          IconButton(
            tooltip: 'Tentang aplikasi',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (context) => const AboutScreen(),
                ),
              );
            },
            icon: const Icon(Icons.info_outline),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  const ProfileHeader(
                    imagePath: 'assets/ash.jpg',
                    name: 'Joko Widodo',
                    nim: '25.22.0000',
                  ),
                  const SizedBox(height: 24),
                  const ProfileInfo(
                    programStudi: 'S1 Informatika',
                    email: 'joko@students.amikom.ac.id',
                    lokasi: 'Yogyakarta',
                  ),
                  const SizedBox(height: 16),
                  const SocialMediaRow(),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: const ActionButtons(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}