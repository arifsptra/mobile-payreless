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
              HeaderSection(),
              ServicesSection(),
              TransactionHistorySection(),
              PromoSection(),
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
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF7A3EFF), Color(0xFF502B9D)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 2,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Saldo Anda",
                style: TextStyle(color: Colors.white60, fontSize: 12),
              ),
              Text(
                "Rp 121.000",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(
                    0.2,
                  ), // Warna background IconButton
                  shape: BoxShape.circle, // Membuatnya menjadi lingkaran
                ),
                child: IconButton(
                  icon: const Icon(Icons.support_agent, color: Colors.white),
                  iconSize: 30.0, // Ukuran ikon bisa disesuaikan
                  onPressed: () {
                    // Tambahkan aksi ketika tombol ditekan
                  },
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Butuh Bantuan?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Hubungi kami sekarang juga',
                    style: TextStyle(color: Colors.white60, fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 5,
      children: [
        ServiceItem(icon: Icons.phone, label: 'Pulsa'),
        ServiceItem(icon: Icons.data_usage, label: 'Paket Data'),
        ServiceItem(icon: Icons.lightbulb, label: 'PLN'),
        ServiceItem(icon: Icons.health_and_safety, label: 'BPJS'),
        ServiceItem(icon: Icons.wifi_calling, label: 'Pascabayar'),
        ServiceItem(icon: Icons.water_damage, label: 'PDAM'),
        ServiceItem(icon: Icons.videogame_asset, label: 'Games'),
        ServiceItem(icon: Icons.phone_android, label: 'Telkom'),
        ServiceItem(icon: Icons.sms, label: 'Telp & SMS'),
        ServiceItem(icon: Icons.security, label: 'Asuransi'),
        ServiceItem(icon: Icons.money, label: 'Multi Finance'),
        ServiceItem(icon: Icons.local_gas_station, label: 'Gas Alam'),
        ServiceItem(icon: Icons.wallet, label: 'Ewallet'),
        ServiceItem(icon: Icons.money_off, label: 'EMoney'),
        ServiceItem(icon: Icons.tv, label: 'TELEVISI'),
      ],
    );
  }
}

class ServiceItem extends StatelessWidget {
  final IconData icon;
  final String label;

  ServiceItem({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.deepPurple.withOpacity(
              0.2,
            ), // Warna background IconButton
            shape: BoxShape.circle, // Membuatnya menjadi lingkaran
          ),
          child: IconButton(
            icon: Icon(icon, size: 40, color: Colors.deepPurple),
            iconSize: 30.0, // Ukuran ikon bisa disesuaikan
            onPressed: () {
              // Tambahkan aksi ketika tombol ditekan
            },
          ),
        ),
        SizedBox(height: 8),
        Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF7A3EFF), Color(0xFF502B9D)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 2,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.history, color: Colors.white),
              SizedBox(width: 2),
              Text(
                "Riwayat isi ulang & transaksi",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          Icon(Icons.arrow_forward_ios, color: Colors.white),
        ],
      ),
    );
  }
}

class PromoSection extends StatelessWidget {
  const PromoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
