import 'package:flutter/material.dart';

class UserInfoCard extends StatelessWidget {
  const UserInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 100,
            decoration: const BoxDecoration(
              color: Colors.deepPurple, // Warna latar belakang
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(14),
                bottomRight: Radius.circular(14),
              ),
            ),
          ),
        ),
        Positioned(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  // ignore: deprecated_member_use
                  color: Colors.black.withOpacity(
                    0.1,
                  ), // Bayangan lebih transparan
                  blurRadius: 10, // Seberapa blur bayangannya
                  spreadRadius: 2, // Seberapa jauh menyebar
                  offset: const Offset(0, 4), // Posisi bayangan (X, Y)
                ),
              ],
            ),
            child: Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 30,
                          child: Icon(Icons.person, size: 40),
                        ),
                        const SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Reseller Findig',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 103, 59, 183),
                              ),
                            ),
                            Text(
                              '085228418055',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text(
                              'Saldo PPOB',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 88, 88, 88),
                              ),
                            ),
                            Text(
                              'Rp 14.600',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 103, 59, 183),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 8.0,
                      ), // Atur margin
                      child: Divider(thickness: 0.5),
                    ),
                    Row(
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
                                shape:
                                    BoxShape
                                        .circle, // Membuatnya menjadi lingkaran
                              ),
                              child: IconButton(
                                icon: const Icon(Icons.account_balance_wallet),
                                iconSize: 30.0, // Ukuran ikon bisa disesuaikan
                                onPressed: () {
                                  // Tambahkan aksi ketika tombol ditekan
                                },
                              ),
                            ),
                            const SizedBox(
                              height: 2,
                            ), // Menambah jarak antara ikon dan teks
                            const Text(
                              'Isi Ulang',
                              style: TextStyle(
                                fontSize: 12,
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
                                shape:
                                    BoxShape
                                        .circle, // Membuatnya menjadi lingkaran
                              ),
                              child: IconButton(
                                icon: const Icon(Icons.send),
                                iconSize: 30.0, // Ukuran ikon bisa disesuaikan
                                onPressed: () {
                                  // Tambahkan aksi ketika tombol ditekan
                                },
                              ),
                            ),
                            const SizedBox(
                              height: 2,
                            ), // Menambah jarak antara ikon dan teks
                            const Text(
                              'Kirim',
                              style: TextStyle(
                                fontSize: 12,
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
                                shape:
                                    BoxShape
                                        .circle, // Membuatnya menjadi lingkaran
                              ),
                              child: IconButton(
                                icon: const Icon(Icons.money),
                                iconSize: 30.0, // Ukuran ikon bisa disesuaikan
                                onPressed: () {
                                  // Tambahkan aksi ketika tombol ditekan
                                },
                              ),
                            ),
                            const SizedBox(
                              height: 2,
                            ), // Menambah jarak antara ikon dan teks
                            const Text(
                              'Tarik',
                              style: TextStyle(
                                fontSize: 12,
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
                                shape:
                                    BoxShape
                                        .circle, // Membuatnya menjadi lingkaran
                              ),
                              child: IconButton(
                                icon: const Icon(Icons.help),
                                iconSize: 30.0, // Ukuran ikon bisa disesuaikan
                                onPressed: () {
                                  // Tambahkan aksi ketika tombol ditekan
                                },
                              ),
                            ),
                            const SizedBox(
                              height: 2,
                            ), // Menambah jarak antara ikon dan teks
                            const Text(
                              'Bantuan',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ), // Menyesuaikan tampilan teks
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
