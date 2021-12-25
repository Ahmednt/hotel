import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:webiste_hostel_app/constants.dart';
import 'package:webiste_hostel_app/widgets/contact_info.dart';
import 'package:webiste_hostel_app/widgets/menu/feature.dart';
import 'logo.dart';

class SideMenuSection extends StatelessWidget {
  const SideMenuSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Logo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ContactInfo(),
                    Divider(),
                    Feature(),
                    Divider(),
                    SizedBox(
                      height: kDefaultPadding,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: FittedBox(
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/download.svg',
                              color: Colors.yellow,
                              width: 13,
                            ),
                            SizedBox(width: kDefaultPadding / 2),
                            Text(
                              'Download Brochure',
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: kDefaultPadding * 0.5),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset('assets/icons/instagram.svg',
                                color: Colors.white, width: 12),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset('assets/icons/twitter.svg',
                                color: Colors.white, width: 12),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset('assets/icons/linkedin.svg',
                                color: Colors.white, width: 12),
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
      ),
    );
  }
}
