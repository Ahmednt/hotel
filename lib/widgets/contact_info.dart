import 'package:flutter/material.dart';
import 'package:webiste_hostel_app/constants.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildContactInfo(
          title: 'Address',
          text: 'Street buiding 125, Nizwa',
        ),
        buildContactInfo(
          title: 'Country',
          text: 'Sultanate of Oman',
        ),
        buildContactInfo(
          title: 'Email',
          text: 'info@rce_hotels.com',
        ),
        buildContactInfo(
          title: 'Mobile',
          text: '+968 10110010',
        ),
        buildContactInfo(
          title: 'Website',
          text: 'www.rec.hotels.com',
        ),
      ],
    );
  }

  Padding buildContactInfo({required String title, required String text}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$title',
            style: TextStyle(color: Colors.yellow),
          ),
          Text(text),
        ],
      ),
    );
  }
}
