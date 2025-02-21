import 'package:flutter/material.dart';
import 'package:flutter_payreless/presentation/widgets/app_header.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: const [
              SizedBox(height: 85), // Space for AppBar
              Profile(),
              SizedBox(height: 20),
            ],
          ),
        ),
        const AppHeader(),
      ],
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // ✅ Make width 100%
      padding: const EdgeInsets.symmetric(vertical: 16), // Optional padding
      alignment: Alignment.center, // Center the text
      color: Colors.deepPurple.withOpacity(0.1), // Optional background
      child: const Text(
        "Profil",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
