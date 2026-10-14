import 'package:flutter/material.dart';

class ProfilePhoto extends StatelessWidget {
  final String? imagePath; // Ubah nama variabel menjadi imagePath
  final double radius;

  const ProfilePhoto({
    super.key,
    this.imagePath, // Sesuaikan di sini
    this.radius = 60,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: const Color.fromARGB(255, 196, 67, 67),
      backgroundImage:
          // Gunakan AssetImage, bukan NetworkImage
          imagePath != null ? AssetImage(imagePath!) : null,
      child: imagePath == null
          ? Icon(
              Icons.person,
              size: radius * 1.3,
              color: Colors.white,
            )
          : null,
    );
  }
}