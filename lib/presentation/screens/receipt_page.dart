import 'package:flutter/material.dart';
import '../widgets/app_header.dart';

class ReceiptPage extends StatelessWidget {
  const ReceiptPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: const [
              SizedBox(height: 85),
              Expanded(child: NavigationTagihan()),
            ],
          ),
          const AppHeader(),
        ],
      ),
    );
  }
}

class NavigationTagihan extends StatelessWidget {
  const NavigationTagihan({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          // Container sebagai background TabBar
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 30),
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              // borderRadius: BorderRadius.circular(30),
            ),
            child: Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade400,
                borderRadius: BorderRadius.circular(30),
              ),
              child: TabBar(
                indicator: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: Colors.transparent,
                labelColor: Colors.deepPurple,
                unselectedLabelColor: Colors.white.withOpacity(0.7),
                labelStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
                unselectedLabelStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
                tabs: const [
                  Tab(text: "Belum Dibayar"),
                  Tab(text: "Sudah Dibayar"),
                ],
              ),
            ),
          ),

          // Expanded agar konten tab mengambil seluruh tinggi
          Expanded(
            child: TabBarView(
              children: [
                ListView.builder(
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                  itemCount: 10,
                  itemBuilder: (content, index) {
                    return Column(
                      children: [
                        Card(
                          elevation: 4, // Efek shadow
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          margin: const EdgeInsets.symmetric(
                            vertical: 4,
                          ), // Jarak antar Card
                          child: Padding(
                            padding: const EdgeInsets.all(
                              12,
                            ), // Padding dalam Card
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
                                    Icons.receipt,
                                    color: Colors.deepPurple,
                                    size: 28,
                                  ),
                                ),
                                const SizedBox(
                                  width: 12,
                                ), // Jarak antara ikon dan teks
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Hotspot 2 Jam',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black87,
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        '11 Februari 2025',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromARGB(
                                            255,
                                            82,
                                            82,
                                            82,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: const [
                                      Text(
                                        'Rp 20.000',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black87,
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        'PEMBAYARAN GAGAL',
                                        style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red,
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
                    );
                  },
                ),

                ListView.builder(
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                  itemCount: 10,
                  itemBuilder: (content, index) {
                    return Column(
                      children: [
                        Card(
                          elevation: 4, // Efek shadow
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          margin: const EdgeInsets.symmetric(
                            vertical: 4,
                          ), // Jarak antar Card
                          child: Padding(
                            padding: const EdgeInsets.all(
                              12,
                            ), // Padding dalam Card
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
                                    Icons.receipt,
                                    color: Colors.deepPurple,
                                    size: 28,
                                  ),
                                ),
                                const SizedBox(
                                  width: 12,
                                ), // Jarak antara ikon dan teks
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Hotspot 2 Jam',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black87,
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        '11 Februari 2025',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromARGB(
                                            255,
                                            82,
                                            82,
                                            82,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: const [
                                      Text(
                                        'Rp 100.000',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black87,
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        'PEMBAYARAN BERHASIL',
                                        style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green,
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
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
