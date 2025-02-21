import 'package:flutter/material.dart';

class Berita extends StatelessWidget {
  const Berita({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Berita Terbaru',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Text(
                'Agar kamu tidak ketinggalan info dari kami',
                style: TextStyle(
                  fontSize: 12,
                  color: Color.fromARGB(255, 82, 82, 82),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Card(
                elevation: 4, // Efek shadow
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                margin: const EdgeInsets.symmetric(
                  vertical: 4,
                  // horizontal: 16,
                ), // Jarak antar Card
                child: Padding(
                  padding: const EdgeInsets.all(12), // Padding dalam Card
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple.withOpacity(
                            0.1,
                          ), // Background icon
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.wifi,
                          color: Colors.deepPurple,
                          size: 28,
                        ),
                      ),
                      const SizedBox(width: 12), // Jarak antara ikon dan teks
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Bayar Internet Wifi dari Rumah Aja!',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Cara bayar wifi dari transfer bank / Ewallet',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 82, 82, 82),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 4, // Efek shadow
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                margin: const EdgeInsets.symmetric(
                  vertical: 4,
                  // horizontal: 16,
                ), // Jarak antar Card
                child: Padding(
                  padding: const EdgeInsets.all(12), // Padding dalam Card
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple.withOpacity(
                            0.1,
                          ), // Background icon
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.real_estate_agent_outlined,
                          color: Colors.deepPurple,
                          size: 28,
                        ),
                      ),
                      const SizedBox(width: 12), // Jarak antara ikon dan teks
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Bayar Internetmu lewat Alfamart & Indomart!',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Bayar Admin Hanya Rp. 2500',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 82, 82, 82),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
