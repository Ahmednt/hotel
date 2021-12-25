import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:webiste_hostel_app/constants.dart';

class Feature extends StatelessWidget {
  const Feature({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
          child: Text(
            'Features',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        buildFeature(text: 'Unique Services '),
        buildFeature(text: 'Free Services Internet '),
        buildFeature(text: 'Five Star Rooms With Natural Views'),
        buildFeature(text: 'Special Healthy Foods'),
        buildFeature(text: 'Prices with Offers'),
        buildFeature(text: 'Rental Cars + Free 100 ltr Fuel'),
      ],
    );
  }

  Padding buildFeature({required String text}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/check.svg',
              color: Colors.yellow, width: 14),
          SizedBox(width: kDefaultPadding / 2),
          Text(text),
        ],
      ),
    );
  }
}
