import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
        height: 85,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 103, 59, 183),
        ),
        child: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text(
            'FIDNET',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          leading: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Image.asset('assets/logo.png', height: 40, width: 40),
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.notifications,
                size: 30,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
          centerTitle: true,
          elevation: 0,
        ),
      ),
    );
  }
}
