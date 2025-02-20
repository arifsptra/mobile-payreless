import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CarouselController _carouselController = CarouselController();

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 95),
                UserInfoCard(),
                HotspotCard(),
                FeaturesGrid(),
                BestOffers(),
                Berita(),
                SelaluAda(),
                const SizedBox(height: 20),
              ],
            ),
          ),

          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 100,
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
          ),
        ],
      ),

      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(Icons.home, 0),
            _buildNavItem(Icons.receipt, 1),
            _buildNavItem(Icons.payment, 2),
            _buildNavItem(Icons.person, 3),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, int index) {
    return IconButton(
      icon: Icon(
        icon,
        color:
            _selectedIndex == index
                ? const Color.fromARGB(255, 103, 59, 183)
                : Colors.grey,
      ),
      onPressed: () => _onItemTapped(index),
    );
  }
}

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

class HotspotCard extends StatelessWidget {
  const HotspotCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF7A3EFF), Color(0xFF502B9D)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 2,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Text(
                  "HOTSPOT 2JAM",
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
              const Text(
                "HOTSPOT",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          const Divider(color: Colors.white38, thickness: 0.5),
          const SizedBox(height: 16),

          // Speed Indicators
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildSpeedMeter("UPLOAD"),
              _buildSpeedMeter("DOWNLOAD"),
            ],
          ),

          const SizedBox(height: 12),
          const Divider(color: Colors.white38, thickness: 0.5),

          // Footer: Status + Timestamp
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Text(
                  "TERISOLIR",
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
              const Text(
                "Feb, 01 2025 15:36",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Widget untuk tampilan speed meter
  Widget _buildSpeedMeter(String label) {
    return Row(
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white10,
          ),
          child: const Center(
            child: Icon(Icons.speed, size: 40, color: Colors.white),
          ),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "0.0 B",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                color: Colors.white.withOpacity(0.8),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

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

class BestOffers extends StatelessWidget {
  const BestOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Penawaran Terbaik',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '123 Poin Tersedia',
                    style: TextStyle(fontSize: 12, color: Colors.deepPurple),
                  ),
                ],
              ),
              Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Lihat Lainnya',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ),
                  ),
                  Icon(Icons.arrow_forward, color: Colors.deepPurple, size: 14),
                ],
              ),
            ],
          ),
          SizedBox(height: 6),
          CarouselSlider.builder(
            itemCount: 5,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) =>
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(horizontal: 2),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          itemIndex.toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ),
            options: CarouselOptions(
              height: 200,
              aspectRatio: 4 / 3,
              viewportFraction: 0.4,
              initialPage: 0,
              enableInfiniteScroll: true,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 10),
              autoPlayAnimationDuration: const Duration(milliseconds: 2000),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}

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

class SelaluAda extends StatelessWidget {
  const SelaluAda({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Selalu ada di Payreless',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Mudah dapatkan akses info promo terbaru',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(255, 82, 82, 82),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 6),
          CarouselSlider.builder(
            itemCount: 5,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) =>
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(horizontal: 2),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          itemIndex.toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ),
            options: CarouselOptions(
              height: 200,
              aspectRatio: 16 / 9,
              viewportFraction: 0.7,
              initialPage: 0,
              enableInfiniteScroll: true,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 10),
              autoPlayAnimationDuration: const Duration(milliseconds: 2000),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}
