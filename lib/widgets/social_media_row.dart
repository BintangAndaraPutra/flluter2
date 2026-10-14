import 'package:flutter/material.dart';

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({super.key});

  void _showSocialMediaMessage(BuildContext context, String name) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(name)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          tooltip: 'Instagram',
          onPressed: () => _showSocialMediaMessage(context, 'Instagram'),
          icon: const Icon(Icons.camera_alt),
        ),
        IconButton(
          tooltip: 'LinkedIn',
          onPressed: () => _showSocialMediaMessage(context, 'LinkedIn'),
          icon: const Icon(Icons.business),
        ),
        IconButton(
          tooltip: 'GitHub',
          onPressed: () => _showSocialMediaMessage(context, 'GitHub'),
          icon: const Icon(Icons.code),
        ),
      ],
    );
  }
}
