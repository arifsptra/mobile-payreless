import 'package:flutter/material.dart';
import 'package:flutter_payreless/presentation/widgets/app_header.dart';
import '../widgets/user_info_card.dart';
import '../widgets/hotspot_card.dart';
import '../widgets/features_grid.dart';
import '../widgets/best_offers.dart';
import '../widgets/berita.dart';
import '../widgets/selalu_ada.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: const [
              SizedBox(height: 85),
              UserInfoCard(),
              HotspotCard(),
              FeaturesGrid(),
              BestOffers(),
              Berita(),
              SelaluAda(),
              SizedBox(height: 50),
            ],
          ),
        ),
        const AppHeader(),
      ],
    );
  }
}
