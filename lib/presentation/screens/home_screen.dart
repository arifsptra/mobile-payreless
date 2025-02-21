import 'package:flutter/material.dart';
import 'package:flutter_payreless/presentation/screens/payment_page.dart';
import 'package:flutter_payreless/presentation/screens/profile_page.dart';
import 'package:flutter_payreless/presentation/screens/receipt_page.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'home_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  // List of screens for navigation
  final List<Widget> _pages = [
    const HomePage(),
    const ReceiptPage(),
    const PaymentPage(),
    const ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // Switch between pages
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
          child: GNav(
            gap: 8,
            padding: const EdgeInsets.all(16),
            activeColor: Colors.white,
            tabBackgroundColor: Colors.deepPurple,
            selectedIndex: _selectedIndex,
            onTabChange: _onItemTapped,
            tabs: const [
              GButton(icon: Icons.home, text: 'Beranda'),
              GButton(icon: Icons.receipt, text: 'Tagihan'),
              GButton(icon: Icons.payment, text: 'PPOB'),
              GButton(icon: Icons.person, text: 'Profil'),
            ],
          ),
        ),
      ),
    );
  }
}