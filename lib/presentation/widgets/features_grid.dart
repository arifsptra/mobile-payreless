import 'package:flutter/material.dart';

class FeaturesGrid extends StatelessWidget {
  const FeaturesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.deepPurple.withOpacity(
                    0.1,
                  ), // Warna background IconButton
                  shape: BoxShape.circle, // Membuatnya menjadi lingkaran
                ),
                child: IconButton(
                  icon: const Icon(Icons.wifi),
                  iconSize: 40.0, // Ukuran ikon bisa disesuaikan
                  onPressed: () {
                    // Tambahkan aksi ketika tombol ditekan
                  },
                ),
              ),
              const SizedBox(height: 2), // Menambah jarak antara ikon dan teks
              const Text(
                'Langganan',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                ), // Menyesuaikan tampilan teks
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.deepPurple.withOpacity(
                    0.1,
                  ), // Warna background IconButton
                  shape: BoxShape.circle, // Membuatnya menjadi lingkaran
                ),
                child: IconButton(
                  icon: const Icon(Icons.shopping_cart),
                  iconSize: 40.0, // Ukuran ikon bisa disesuaikan
                  onPressed: () {
                    // Tambahkan aksi ketika tombol ditekan
                  },
                ),
              ),
              const SizedBox(height: 2), // Menambah jarak antara ikon dan teks
              const Text(
                'Pembelian',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                ), // Menyesuaikan tampilan teks
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.deepPurple.withOpacity(
                    0.1,
                  ), // Warna background IconButton
                  shape: BoxShape.circle, // Membuatnya menjadi lingkaran
                ),
                child: IconButton(
                  icon: const Icon(Icons.card_giftcard),
                  iconSize: 40.0, // Ukuran ikon bisa disesuaikan
                  onPressed: () {
                    // Tambahkan aksi ketika tombol ditekan
                  },
                ),
              ),
              const SizedBox(height: 2), // Menambah jarak antara ikon dan teks
              const Text(
                'Vouchers',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                ), // Menyesuaikan tampilan teks
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.deepPurple.withOpacity(
                    0.1,
                  ), // Warna background IconButton
                  shape: BoxShape.circle, // Membuatnya menjadi lingkaran
                ),
                child: IconButton(
                  icon: const Icon(Icons.group),
                  iconSize: 40.0, // Ukuran ikon bisa disesuaikan
                  onPressed: () {
                    // Tambahkan aksi ketika tombol ditekan
                  },
                ),
              ),
              const SizedBox(height: 2), // Menambah jarak antara ikon dan teks
              const Text(
                'Keagenan',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                ), // Menyesuaikan tampilan teks
              ),
            ],
          ),
        ],
      ),
    );
  }
}
