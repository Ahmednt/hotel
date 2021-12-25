import 'package:flutter/material.dart';
import 'package:webiste_hostel_app/models/recommendations.dart';
import 'package:webiste_hostel_app/screens/home_screen.dart';
import 'package:webiste_hostel_app/widgets/main/projects.dart';
import 'package:webiste_hostel_app/widgets/main/recommendations.dart';

import 'Icon_Info.dart';
import 'home_banner.dart';

class MainSection extends StatelessWidget {
  const MainSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeScreen(
      mainSection: SingleChildScrollView(
        child: Column(
          children: [
            HomeBanner(),
            IconInfo(),
            Projects(),
            Recommendations(),
          ],
        ),
      ),
    );
  }
}
