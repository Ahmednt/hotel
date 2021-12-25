import 'package:flutter/material.dart';
import 'package:webiste_hostel_app/constants.dart';
import 'package:webiste_hostel_app/responsive.dart';

class IconInfo extends StatelessWidget {
  const IconInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding * 3),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: buildIconInfo(
                        context: context,
                        icon: Icons.hotel_rounded,
                        text: '400+',
                        label: 'bedroms',
                      ),
                    ),
                    Expanded(
                      child: buildIconInfo(
                        context: context,
                        icon: Icons.luggage_rounded,
                        text: '5000+',
                        label: 'Visitors',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: kDefaultPadding * 3),
                Row(
                  children: [
                    Expanded(
                      child: buildIconInfo(
                        context: context,
                        icon: Icons.location_pin,
                        text: 'Area Branches',
                        label: 'Around Cities',
                      ),
                    ),
                    Expanded(
                      child: buildIconInfo(
                        context: context,
                        icon: Icons.taxi_alert,
                        text: ' 300 Taxi Around',
                        label: 'Taxi_REC App',
                      ),
                    ),
                  ],
                )
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildIconInfo(
                  context: context,
                  icon: Icons.hotel_rounded,
                  text: '400+',
                  label: 'bedroms',
                ),
                buildIconInfo(
                  context: context,
                  icon: Icons.luggage_rounded,
                  text: '5000+',
                  label: 'Visitors',
                ),
                buildIconInfo(
                  context: context,
                  icon: Icons.location_pin,
                  text: 'Area Branches',
                  label: 'Around Cities',
                ),
                buildIconInfo(
                  context: context,
                  icon: Icons.taxi_alert,
                  text: ' 300 Taxi Around',
                  label: 'Taxi_REC App',
                ),
              ],
            ),
    );
  }

  Column buildIconInfo({
    required BuildContext context,
    required IconData icon,
    required String text,
    required String label,
  }) {
    return Column(
      children: [
        Icon(icon, size: 30.0),
        SizedBox(height: 10),
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(color: kPrimaryColor, fontSize: 20),
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}
