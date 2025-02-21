import 'package:flutter/material.dart';
import '../widgets/app_header.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: const [
              SizedBox(height: 85),
              Payment(),
              SizedBox(height: 20),
            ],
          ),
        ),
        const AppHeader(),
      ],
    );
  }
}

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // ✅ Make width 100%
      padding: const EdgeInsets.symmetric(vertical: 16), // Optional padding
      alignment: Alignment.center, // Center the text
      color: Colors.deepPurple.withOpacity(0.1), // Optional background
      child: const Text(
        "Pembayaran",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
