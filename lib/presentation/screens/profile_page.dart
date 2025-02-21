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
              HeaderSection(),
              ProfileDetailSection(),
              SizedBox(height: 20),
            ],
          ),
        ),
        const AppHeader(),
      ],
    );
  }
}

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 40),
      decoration: BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(40),
          bottomLeft: Radius.circular(40),
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(
                0.2,
              ), // Warna background IconButton
              shape: BoxShape.circle, // Membuatnya menjadi lingkaran
            ),
            child: Icon(Icons.person, size: 60, color: Colors.white),
          ),
          SizedBox(height: 20),
          Text(
            'Reseller Findig',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '085228418055',
            style: TextStyle(color: Colors.white60, fontSize: 14),
          ),
        ],
      ),
    );
  }
}

class ProfileDetailSection extends StatelessWidget {
  const ProfileDetailSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> menuItems = [
      {'label': 'Verifikasi Akun PPOB', 'icon': Icons.person_outline},
      {'label': 'Hapus Cache', 'icon': Icons.delete_outline},
      {'label': 'Pengaturan Printer', 'icon': Icons.print},
      {'label': 'Bantuan', 'icon': Icons.help_outline},
      {'label': 'Tentang Aplikasi', 'icon': Icons.info_outline},
      {'label': 'Keluar', 'icon': Icons.logout},
    ];

    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(menuItems.length * 2 - 1, (index) {
          if (index.isEven) {
            int itemIndex = index ~/ 2;
            return ProfileDetailItem(
              label: menuItems[itemIndex]['label'],
              icon: menuItems[itemIndex]['icon'],
            );
          } else {
            return Divider(
              color: Colors.grey[300],
              thickness: 1,
            ); // Garis pembatas
          }
        }),
      ),
    );
  }
}

class ProfileDetailItem extends StatelessWidget {
  final String label;
  final IconData icon;

  ProfileDetailItem({required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8), // Jarak antar item
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.deepPurple.withOpacity(0.2), // Background icon
                  shape: BoxShape.circle, // Membuatnya menjadi lingkaran
                ),
                child: Icon(icon, size: 24, color: Colors.deepPurple),
              ),
              SizedBox(width: 12), // Spasi antara ikon dan teks
              Text(
                label,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Icon(Icons.arrow_forward_ios, size: 16, color: Colors.black54),
        ],
      ),
    );
  }
}
